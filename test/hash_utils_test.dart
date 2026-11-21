import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:toadplayer/utils/hash_utils.dart';

void main() {
  test('fnv1a32 matches the reference vectors', () {
    // Offsets and vectors from the FNV reference implementation.
    expect(fnv1a32(const []), 0x811c9dc5);
    expect(fnv1a32('a'.codeUnits), 0xe40c292c);
    expect(fnv1a32('foobar'.codeUnits), 0xbf9cf968);
  });

  test('fnv1a32 stays within 32 bits', () {
    final hash = fnv1a32(utf8.encode('toadplayer' * 100));
    expect(hash, inInclusiveRange(0, 0xffffffff));
    expect(hash, isNot(0x811c9dc5));
  });
}
