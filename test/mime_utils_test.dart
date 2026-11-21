import 'package:flutter_test/flutter_test.dart';
import 'package:toadplayer/utils/mime_utils.dart';

void main() {
  test('maps known extensions to audio MIME types', () {
    expect(audioMimeTypeForPath('/music/song.flac'), 'audio/flac');
    expect(audioMimeTypeForPath('song.m4a'), 'audio/mp4');
    expect(audioMimeTypeForPath('song.mp3'), 'audio/mpeg');
    expect(audioMimeTypeForPath('song.ogg'), 'audio/ogg');
    expect(audioMimeTypeForPath('song.wav'), 'audio/wav');
    expect(audioMimeTypeForPath('song.aiff'), 'audio/aiff');
    expect(audioMimeTypeForPath('song.aif'), 'audio/aiff');
    expect(audioMimeTypeForPath('song.aac'), 'audio/aac');
  });

  test('is case-insensitive', () {
    expect(audioMimeTypeForPath('SONG.FLAC'), 'audio/flac');
  });

  test('falls back to audio/* for unknown or missing extensions', () {
    expect(audioMimeTypeForPath('song.xyz'), 'audio/*');
    expect(audioMimeTypeForPath('/music/song'), 'audio/*');
    expect(audioMimeTypeForPath('/music/song.'), 'audio/*');
  });
}
