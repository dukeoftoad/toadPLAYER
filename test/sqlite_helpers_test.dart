import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:toadplayer/services/sqlite_helpers.dart';

void main() {
  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  Future<Database> openMemory({
    Future<void> Function(Database db)? onCreate,
  }) {
    return openDatabase(
      inMemoryDatabasePath,
      version: 1,
      onCreate: (db, version) async {
        if (onCreate != null) await onCreate(db);
      },
    );
  }

  group('SingleFlightInitializer', () {
    test('caches the created value', () async {
      final initializer = SingleFlightInitializer<int>();
      var created = 0;
      Future<int> create() async {
        created++;
        return 7;
      }

      expect(await initializer.getOrCreate(create), 7);
      expect(await initializer.getOrCreate(create), 7);
      expect(created, 1);
    });

    test('coalesces concurrent creations', () async {
      final initializer = SingleFlightInitializer<int>();
      var started = 0;
      var completed = 0;
      Future<int> create() async {
        started++;
        await Future<void>.delayed(const Duration(milliseconds: 20));
        completed++;
        return 3;
      }

      final results = await Future.wait([
        initializer.getOrCreate(create),
        initializer.getOrCreate(create),
        initializer.getOrCreate(create),
      ]);
      expect(results, everyElement(3));
      expect(started, 1);
      expect(completed, 1);
    });

    test('reset forces a new creation', () async {
      final initializer = SingleFlightInitializer<int>();
      var value = 1;
      expect(await initializer.getOrCreate(() async => value++), 1);
      initializer.reset();
      expect(await initializer.getOrCreate(() async => value++), 2);
    });
  });

  group('query helpers', () {
    test('ftsPhraseSearchQuery quotes and escapes', () {
      expect(ftsPhraseSearchQuery('hello'), '"hello"');
      expect(ftsPhraseSearchQuery('say "hi"'), '"say ""hi"""');
      expect(ftsPhraseSearchQuery('AB'), isNull);
      expect(ftsPhraseSearchQuery('éa'), isNull);
      expect(ftsPhraseSearchQuery('a\u0000b'), isNull);
    });

    test('isTrigramFts5UnavailableError recognises module and tokenizer failures', () {
      expect(isTrigramFts5UnavailableError('no such module: fts5'), isTrue);
      expect(isTrigramFts5UnavailableError('No Such Module: FTS5'), isTrue);
      expect(isTrigramFts5UnavailableError('no such tokenizer: trigram'), isTrue);
      expect(isTrigramFts5UnavailableError('unknown tokenizer: trigram'), isTrue);
      expect(isTrigramFts5UnavailableError('disk I/O error'), isFalse);
    });

    test('normalizeLookupText trims and lowercases', () {
      expect(normalizeLookupText('  Artist '), 'artist');
      expect(normalizeLookupText(null), '');
    });
  });

  group('createTrigramFtsIndex', () {
    Future<Database> openSongsDb() {
      return openMemory(onCreate: (db) async {
        await db.execute(
          'CREATE TABLE songs(id INTEGER PRIMARY KEY, search_text TEXT)',
        );
      });
    }

    test('indexes rows and follows trigger updates when FTS5 exists', () async {
      final db = await openSongsDb();
      try {
        await db.insert('songs', {'id': 1, 'search_text': 'hello world'});
        final supported = await createTrigramFtsIndex(
          db,
          ftsTable: 'songs_fts',
          contentTable: 'songs',
          triggerPrefix: 'songs_fts',
        );
        if (supported) {
          final query = ftsPhraseSearchQuery('hello')!;
          final direct = await db.rawQuery(
            'SELECT rowid FROM songs_fts WHERE songs_fts MATCH ?',
            [query],
          );
          expect(direct, hasLength(1));
          // Triggers keep the external-content index current for new rows.
          await db.insert('songs', {'id': 2, 'search_text': 'hello again'});
          final updated = await db.rawQuery(
            'SELECT rowid FROM songs_fts WHERE songs_fts MATCH ?',
            [query],
          );
          expect(updated, hasLength(2));
          // Deleting a row removes its index entry.
          await db.delete('songs', where: 'id = ?', whereArgs: [1]);
          final remaining = await db.rawQuery(
            'SELECT rowid FROM songs_fts WHERE songs_fts MATCH ?',
            [query],
          );
          expect(remaining, hasLength(1));
        } else {
          // Without FTS5 the caller must keep its LIKE fallback: no table.
          final tables = await db.rawQuery(
            "SELECT name FROM sqlite_master WHERE type = 'table' AND name = 'songs_fts'",
          );
          expect(tables, isEmpty);
        }
      } finally {
        await db.close();
      }
    });

    test('reports the same capability for repeated calls on one runtime', () async {
      final db = await openSongsDb();
      try {
        final first = await createTrigramFtsIndex(
          db,
          ftsTable: 'a_fts',
          contentTable: 'songs',
          triggerPrefix: 'a_fts',
        );
        final second = await createTrigramFtsIndex(
          db,
          ftsTable: 'b_fts',
          contentTable: 'songs',
          triggerPrefix: 'b_fts',
        );
        expect(second, first);
      } finally {
        await db.close();
      }
    });
  });

  group('transactionWithBusyRetry', () {
    test('commits the callback and returns its value', () async {
      final db = await openMemory(onCreate: (db) async {
        await db.execute('CREATE TABLE t(a TEXT)');
      });
      try {
        final result = await transactionWithBusyRetry<String>(db, (txn) async {
          await txn.insert('t', {'a': 'x'});
          return 'done';
        });
        expect(result, 'done');
        expect(await db.query('t'), hasLength(1));
      } finally {
        await db.close();
      }
    });

    test('rethrows action errors without retry', () async {
      final db = await openMemory(onCreate: (db) async {
        await db.execute('CREATE TABLE t(a TEXT)');
      });
      try {
        await expectLater(
          transactionWithBusyRetry<void>(db, (txn) async {
            await txn.insert('t', {'a': 'x'});
            throw StateError('boom');
          }),
          throwsA(isA<StateError>()),
        );
        expect(await db.query('t'), isEmpty);
      } finally {
        await db.close();
      }
    });
  });

  group('schema helpers', () {
    test('addColumnIfMissing is idempotent', () async {
      final db = await openMemory(onCreate: (db) async {
        await db.execute('CREATE TABLE t(id TEXT PRIMARY KEY)');
      });
      try {
        await addColumnIfMissing(db, 't', 'label', 'TEXT');
        await addColumnIfMissing(db, 't', 'label', 'TEXT');
        await db.insert('t', {'id': 'a', 'label': 'x'});
        expect(await db.query('t'), [
          {'id': 'a', 'label': 'x'},
        ]);
      } finally {
        await db.close();
      }
    });

    test('backfillRows rewrites rows by id', () async {
      final db = await openMemory(onCreate: (db) async {
        await db.execute('CREATE TABLE t(id TEXT PRIMARY KEY, a TEXT, b TEXT)');
      });
      try {
        await db.insert('t', {'id': '1', 'a': 'x', 'b': ''});
        await db.insert('t', {'id': '2', 'a': 'y', 'b': ''});
        await backfillRows(db, 't', ['a'], (row) => {'b': '${row['a']}!'});
        expect(await db.query('t', orderBy: 'id'), [
          {'id': '1', 'a': 'x', 'b': 'x!'},
          {'id': '2', 'a': 'y', 'b': 'y!'},
        ]);
      } finally {
        await db.close();
      }
    });

    test('loadRowsByColumn chunks lookups and keeps the first row per value', () async {
      final db = await openMemory(onCreate: (db) async {
        await db.execute('CREATE TABLE t(key TEXT, value TEXT)');
      });
      try {
        final batch = db.batch();
        for (var i = 0; i < 500; i++) {
          batch.insert('t', {'key': 'k$i', 'value': 'v$i'});
        }
        // A duplicate key: the first row seen per value wins.
        batch.insert('t', {'key': 'k0', 'value': 'later'});
        await batch.commit(noResult: true);

        final destination = <String, Map<String, dynamic>>{};
        await loadRowsByColumn(
          db,
          table: 't',
          column: 'key',
          rawValues: [for (var i = 0; i < 500; i++) 'k$i', '', 'k0'],
          destination: destination,
          mapRow: (row) => Map<String, dynamic>.from(row),
        );
        expect(destination, hasLength(500));
        expect(destination['k0']!['value'], 'v0');
        expect(destination['k499']!['value'], 'v499');
      } finally {
        await db.close();
      }
    });
  });

  group('path key helpers', () {
    Future<Database> openLibraryDb() {
      return openMemory(onCreate: (db) async {
        await db.execute(
          'CREATE TABLE library(id TEXT PRIMARY KEY, file_path TEXT)',
        );
        await createPathKeyTable(db, 'library_path_keys');
      });
    }

    test('putPathKeysInBatch stores every alias', () async {
      final db = await openLibraryDb();
      try {
        final batch = db.batch();
        putPathKeysInBatch(batch, 'library_path_keys', 'a', '/music/a.flac');
        await batch.commit(noResult: true);
        final keys = await db.query('library_path_keys');
        expect(keys, isNotEmpty);
        expect(
          keys.map((row) => row['path_key']),
          contains('file:///music/a.flac'),
        );
      } finally {
        await db.close();
      }
    });

    test('backfillPathKeys adds missing keys and drops stale ones', () async {
      final db = await openLibraryDb();
      try {
        await db.insert('library', {
          'id': 'a',
          'file_path': '/music/a.flac',
        });
        await db.insert('library_path_keys', {
          'item_id': 'a',
          'path_key': 'stale',
        });
        await backfillPathKeys(db, 'library', 'library_path_keys');
        final keys = (await db.query('library_path_keys'))
            .map((row) => row['path_key'] as String)
            .toSet();
        expect(keys, contains('/music/a.flac'));
        expect(keys, contains('file:///music/a.flac'));
        expect(keys, isNot(contains('stale')));
      } finally {
        await db.close();
      }
    });

    test('repairWindowsVerbatimPathKeys adds the plain spelling', () async {
      final db = await openLibraryDb();
      try {
        const verbatim = r'\\?\C:\Music\a.flac';
        await db.insert('library', {'id': 'a', 'file_path': verbatim});
        await db.insert('library_path_keys', {
          'item_id': 'a',
          'path_key': verbatim,
        });
        final repaired = await repairWindowsVerbatimPathKeys(
          db,
          'library',
          'library_path_keys',
        );
        expect(repaired, 1);
        final keys = await db.query(
          'library_path_keys',
          where: "path_key = ?",
          whereArgs: [r'C:\Music\a.flac'],
        );
        expect(keys, hasLength(1));
        // The second run finds nothing left to repair.
        expect(
          await repairWindowsVerbatimPathKeys(db, 'library', 'library_path_keys'),
          0,
        );
      } finally {
        await db.close();
      }
    });

    test('findPhysicalFileRowIds resolves SAF aliases', () async {
      final db = await openLibraryDb();
      try {
        const documentUri =
            'content://com.android.externalstorage.documents/tree/primary%3AMusic'
            '/document/primary%3AMusic%2Fa.flac';
        await db.insert('library', {'id': 'a', 'file_path': documentUri});
        final batch = db.batch();
        putPathKeysInBatch(batch, 'library_path_keys', 'a', documentUri);
        await batch.commit(noResult: true);

        final ids = await findPhysicalFileRowIds(
          db,
          'library',
          ['/sdcard/Music/a.flac'],
        );
        expect(ids, ['a']);

        expect(
          await findPhysicalFileRowIds(db, 'library', ['/sdcard/Music/b.flac']),
          isEmpty,
        );
      } finally {
        await db.close();
      }
    });
  });

  group('readWriteStamp', () {
    test('moves when the connection writes', () async {
      final db = await openMemory(onCreate: (db) async {
        await db.execute('CREATE TABLE t(a TEXT)');
      });
      try {
        final before = await readWriteStamp(db, ['main']);
        expect(before, isNotNull);
        await db.insert('t', {'a': 'x'});
        final after = await readWriteStamp(db, ['main']);
        expect(after, isNotNull);
        expect(after, isNot(before));
      } finally {
        await db.close();
      }
    });
  });

  group('LibraryShadowSnapshot', () {
    test('builds the shadow pairs and reads them', () async {
      final historyDirectory = await Directory.systemTemp.createTemp('toadplayer-test');
      addTearDown(() => historyDirectory.delete(recursive: true));
      final historyPath = '${historyDirectory.path}/history.db';
      final historyDb = await openDatabase(
        historyPath,
        version: 1,
        onCreate: (db, version) async {
          await db.execute(
            'CREATE TABLE history(id TEXT PRIMARY KEY, origin_file_path TEXT)',
          );
          await createPathKeyTable(db, 'history_path_keys');
        },
      );
      final db = await openMemory(onCreate: (db) async {
        await db.execute(
          'CREATE TABLE library(id TEXT PRIMARY KEY, file_path TEXT)',
        );
        await createPathKeyTable(db, 'library_path_keys');
      });
      try {
        await db.execute('ATTACH DATABASE ? AS history_db', [historyPath]);

        await db.insert('library', {'id': 'a', 'file_path': '/music/a.flac'});
        await db.insert('history_db.history', {
          'id': 'h1',
          'origin_file_path': '/download/a.flac',
        });
        // The download shares a path key with the scanned file.
        await db.insert('library_path_keys', {
          'item_id': 'a',
          'path_key': '/music/a.flac',
        });
        await db.insert('history_db.history_path_keys', {
          'item_id': 'h1',
          'path_key': '/music/a.flac',
        });

        final snapshot = LibraryShadowSnapshot();
        final stamp = await snapshot.refresh(db);
        expect(stamp, isNotNull);

        final shadowed = await snapshot.read<bool>(db, (isSnapshot) async {
          expect(isSnapshot, isTrue);
          final rows = await db.rawQuery(
            'SELECT item_id, history_id FROM library_shadowed',
          );
          return rows.length == 1 &&
              rows.first['item_id'] == 'a' &&
              rows.first['history_id'] == 'h1';
        });
        expect(shadowed, isTrue);
      } finally {
        await db.close();
        await historyDb.close();
      }
    });
  });
}
