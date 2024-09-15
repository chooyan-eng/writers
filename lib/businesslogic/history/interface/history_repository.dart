import 'package:writers/businesslogic/synonym/synonyms.dart';

abstract interface class HistoryRepository {
  Future<Synonyms?> loadSynonyms(String word);
  Future<void> saveSynonyms(String word, Synonyms synonyms);
}
