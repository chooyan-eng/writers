import 'package:flutter_test/flutter_test.dart';
import 'package:writers/businesslogic/synonym/suggest_synonym_usecase.dart';
import 'package:writers/repository/fake/synonym/fake_synonym_repository.dart';
import 'package:writers/repository/in_memory/history/in_memory_history_repository.dart';
import 'package:writers/repository/in_memory/history/in_memory_history_storage.dart';

void main() {
  late SuggestSynonymUsecase usecase;
  late InMemoryHistoryStorage storage;
  setUp(() {
    storage = InMemoryHistoryStorage();
    usecase = SuggestSynonymUsecase(
      synonymRepository: FakeSynonymRepository(),
      historyRepository: InMemoryHistoryRepository(storage: storage),
    );
  });
  group('when "get" is given', () {
    group('when no sentence is given', () {
      test('foo and bar is returned', () async {
        final actual = await usecase('get');
        expect(actual.synonyms.synonyms.length, 2);
      });

      test('no suggestion is returned', () async {
        final actual = await usecase('get');
        expect(actual.suggested, null);
      });

      test('the result is stored with key of "get"', () async {
        final _ = await usecase('get');
        expect(storage.synonyms.length, 1);
        expect(storage.synonyms.keys.first, 'get');
      });
    });

    group('when sentence is also given', () {
      test('foo and bar is returned as synoyms', () async {
        final actual = await usecase(
          'get',
          sentence: 'The porpose of this function is to get the value.',
        );
        expect(actual.synonyms.synonyms.length, 2);
      });

      test('suggestion is returned', () async {
        final actual = await usecase(
          'get',
          sentence: 'The porpose of this function is to get the value.',
        );
        expect(actual.suggested, isNotNull);
      });
    });
  });
}
