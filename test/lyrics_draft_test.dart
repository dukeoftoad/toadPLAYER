import 'package:flutter_test/flutter_test.dart';
import 'package:toadplayer/utils/lyrics_draft.dart';

void main() {
  group('canEdit', () {
    test('accepts plain text and LRC', () {
      expect(LyricsDraft.canEdit('Just words'), isTrue);
      expect(LyricsDraft.canEdit('[00:01.00]Hello'), isTrue);
      expect(LyricsDraft.canEdit(''), isTrue);
    });

    test('rejects TTML documents', () {
      expect(LyricsDraft.canEdit('<?xml version="1.0"?><tt/>'), isFalse);
      expect(LyricsDraft.canEdit('  <tt xmlns="…">'), isFalse);
      expect(
        LyricsDraft.canEdit('x <tt something> y'),
        isFalse,
      );
      expect(
        LyricsDraft.canEdit('xmlns="http://www.w3.org/ns/ttml"'),
        isFalse,
      );
    });
  });

  group('formatLyricsTime', () {
    test('pads minutes, seconds and centiseconds', () {
      expect(formatLyricsTime(const Duration(milliseconds: 1500)), '00:01.50');
      expect(formatLyricsTime(const Duration(milliseconds: 61500)), '01:01.50');
      expect(formatLyricsTime(const Duration(minutes: 3, seconds: 7)), '03:07.00');
    });

    test('keeps milliseconds that centiseconds would round', () {
      expect(formatLyricsTime(const Duration(milliseconds: 1234)), '00:01.234');
      expect(formatLyricsTime(const Duration(milliseconds: 1230)), '00:01.23');
    });

    test('clamps negative times to zero', () {
      expect(formatLyricsTime(const Duration(milliseconds: -50)), '00:00.00');
    });
  });

  group('LyricsDraft.parse', () {
    test('reads timestamps with second and millisecond fractions', () {
      final draft = LyricsDraft.parse('[00:01.50]Hello\n[01:02:03]Bye');
      expect(draft.lines, hasLength(2));
      expect(draft.lines[0].time, const Duration(milliseconds: 1500));
      expect(draft.lines[0].text, 'Hello');
      expect(draft.lines[1].time, const Duration(minutes: 1, seconds: 2, milliseconds: 30));
      expect(draft.lines[1].text, 'Bye');
      expect(draft.synced, isTrue);
    });

    test('repeats a line for each of its timestamps', () {
      final draft = LyricsDraft.parse('[00:01.00][00:05.00]Chorus');
      expect(draft.lines, hasLength(2));
      expect(draft.lines.every((line) => line.text == 'Chorus'), isTrue);
      expect(draft.lines[1].time, const Duration(seconds: 5));
    });

    test('keeps untimed text as plain lines', () {
      final draft = LyricsDraft.parse('One\n\nTwo');
      expect(draft.lines.map((line) => line.text), ['One', 'Two']);
      expect(draft.lines.every((line) => line.time == null), isTrue);
      expect(draft.synced, isFalse);
    });

    test('applies the offset tag on read', () {
      final draft = LyricsDraft.parse('[offset:500]\n[00:02.00]A');
      expect(draft.lines.single.time, const Duration(milliseconds: 1500));
    });

    test('separates singer prefixes', () {
      final draft = LyricsDraft.parse('[00:10.00]v1: Hello\n[00:20.00]v2: You');
      expect(draft.lines[0].voice, 'v1:');
      expect(draft.lines[0].text, 'Hello');
      expect(draft.lines[1].voice, 'v2:');
    });

    test('strips word timing from the visible text but keeps the content', () {
      final draft = LyricsDraft.parse(
        '[00:10.00]<00:10.00>Hello <00:10.50>world',
      );
      expect(draft.lines.single.text, 'Hello world');
      expect(draft.lines.single.content, '<00:10.00>Hello <00:10.50>world');
      expect(draft.lines.single.contentTime, const Duration(seconds: 10));
    });

    test('attaches background vocals to the preceding line', () {
      final draft = LyricsDraft.parse('[00:10.00]Lead\n[bg: Backing ]\n[00:20.00]Next');
      expect(draft.lines[0].background, ['Backing']);
      expect(draft.lines[0].text, 'Lead');
      expect(draft.lines[1].text, 'Next');
    });

    test('keeps header tags and the trailing credit apart', () {
      final draft = LyricsDraft.parse(
        '[ti:Song]\n[ar:Artist]\n[00:01.00]Line\nWritten by: Someone',
      );
      expect(draft.header, ['[ti:Song]', '[ar:Artist]']);
      expect(draft.lines.map((line) => line.text), ['Line']);
      expect(draft.footer, ['Written by: Someone']);
    });

    test('attaches supplements to the nearest line within 10ms', () {
      final draft = LyricsDraft.parse(
        '[00:10.00]Line\n[x-translation:10000:Hallo]',
      );
      expect(draft.lines.single.supplements, [
        ('translation', 'Hallo'),
      ]);
    });

    test('drops supplements further than 10ms from every line', () {
      final draft = LyricsDraft.parse(
        '[00:10.00]Line\n[x-translation:20000:Hallo]',
      );
      expect(draft.lines.single.supplements, isEmpty);
    });
  });

  group('LyricsDraft.toLrc', () {
    test('writes timed lines with their tags', () {
      final lrc = LyricsDraft.parse(
        '[ti:Song]\n[00:01.50]Hello\n[00:05.00]Bye\nWritten by: X',
      ).toLrc();
      expect(lrc.split('\n'), [
        '[ti:Song]',
        '[00:01.50]Hello',
        '[00:05.00]Bye',
        'Written by: X',
      ]);
    });

    test('writes plain text while nothing is timed', () {
      final lrc = LyricsDraft.parse('One\nTwo').toLrc();
      expect(lrc, 'One\nTwo');
    });

    test('round-trips timestamps, voices and backgrounds', () {
      const source = '[00:01.50]v1: Hello\n[bg:Ah]'
          '\n[00:05.00]v2: You';
      final first = LyricsDraft.parse(source);
      final second = LyricsDraft.parse(first.toLrc());
      expect(second.lines, hasLength(first.lines.length));
      expect(second.lines[0].time, first.lines[0].time);
      expect(second.lines[0].voice, first.lines[0].voice);
      expect(second.lines[0].text, first.lines[0].text);
      expect(second.lines[0].background, first.lines[0].background);
    });

    test('keeps word timing when the line text is unchanged', () {
      final lrc = LyricsDraft.parse(
        '[00:10.00]<00:10.00>Hello <00:10.50>world',
      ).toLrc();
      expect(lrc, '[00:10.00]<00:10.00>Hello <00:10.50>world');
    });

    test('drops word timing once the text changed', () {
      final draft = LyricsDraft.parse('[00:10.00]<00:10.00>Hello');
      final edited = LyricsDraft(
        header: draft.header,
        lines: [
          draft.lines[0].copyWith(text: 'Changed'),
        ],
      );
      expect(edited.toLrc(), '[00:10.00]Changed');
    });

    test('writes supplements after their line', () {
      final lrc = LyricsDraft.parse(
        '[00:10.00]Line\n[x-translation:10000:Hallo]',
      ).toLrc();
      expect(lrc.split('\n'), ['[00:10.00]Line', '[x-translation:10000:Hallo]']);
    });

    test('set time moves a line without losing its text', () {
      final edited = LyricsDraft(
        lines: [
          LyricsDraftLine(time: const Duration(seconds: 20), text: 'Line'),
        ],
      );
      expect(edited.toLrc(), '[00:20.00]Line');
    });
  });
}
