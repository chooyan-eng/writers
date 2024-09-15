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
    test('foo and bar is returned', () async {
      final actual = await usecase('get');
      expect(actual.synonyms.length, 2);
    });

    test('the result is stored with key of "get"', () async {
      final _ = await usecase('get');
      expect(storage.synonyms.length, 1);
      expect(storage.synonyms.keys.first, 'get');
    });
  });
}
