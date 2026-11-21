import 'package:flutter_test/flutter_test.dart';
import 'package:toadplayer/utils/ordered_range_selection.dart';

void main() {
  group('addOrderedSelectionRange', () {
    test('selects every visible item between anchor and target', () {
      final visible = ['a', 'b', 'c', 'd', 'e'];
      final selected = <String>{'b'};
      final anchor = addOrderedSelectionRange(
        selected: selected,
        visibleItems: visible,
        target: 'd',
        anchor: 'b',
      );
      expect(anchor, 'd');
      expect(selected, containsAll(['b', 'c', 'd']));
      // Insertion order follows the user's direction.
      expect(selected.toList(), ['b', 'c', 'd']);
    });

    test('walks backwards when the target precedes the anchor', () {
      final visible = ['a', 'b', 'c', 'd'];
      final selected = <String>{'d'};
      addOrderedSelectionRange(
        selected: selected,
        visibleItems: visible,
        target: 'b',
        anchor: 'd',
      );
      expect(selected, containsAll(['b', 'c', 'd']));
      expect(selected.toList(), ['d', 'c', 'b']);
    });

    test('selects just the target without a usable anchor', () {
      final selected = <String>{};
      final anchor = addOrderedSelectionRange(
        selected: selected,
        visibleItems: ['a', 'b'],
        target: 'a',
      );
      expect(anchor, 'a');
      expect(selected, {'a'});
    });

    test('selects just the target when the anchor left the visible list', () {
      final selected = <String>{'x'};
      addOrderedSelectionRange(
        selected: selected,
        visibleItems: ['a', 'b'],
        target: 'b',
        anchor: 'x',
      );
      expect(selected, {'x', 'b'});
    });
  });

  group('toggleOrderedSelection', () {
    test('adding returns the new anchor', () {
      final selected = <String>{};
      expect(toggleOrderedSelection(selected: selected, target: 'a'), 'a');
      expect(selected, {'a'});
    });

    test('removing returns the remaining last item as anchor', () {
      final selected = <String>{'a', 'b'};
      expect(toggleOrderedSelection(selected: selected, target: 'b'), 'a');
      expect(selected, {'a'});
    });

    test('removing the last item clears the anchor', () {
      final selected = <String>{'a'};
      expect(toggleOrderedSelection(selected: selected, target: 'a'), isNull);
      expect(selected, isEmpty);
    });
  });
}
