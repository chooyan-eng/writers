import 'package:writers/businesslogic/history/interface/history_repository.dart';
import 'package:writers/businesslogic/synonym/synonyms.dart';
import 'package:writers/repository/in_memory/history/in_memory_history_storage.dart';

class InMemoryHistoryRepository implements HistoryRepository {
  InMemoryHistoryRepository({required this.storage});

  final InMemoryHistoryStorage storage;

  @override
  Future<void> saveSynonyms(String word, Synonyms synonyms) async {
    storage.synonyms[word] = synonyms;
  }

  @override
  Future<Synonyms?> loadSynonyms(String word) async => storage.synonyms[word];
}
