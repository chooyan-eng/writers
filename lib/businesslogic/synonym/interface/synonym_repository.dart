import 'package:writers/businesslogic/synonym/synonyms.dart';

abstract interface class SynonymRepository {
  Future<Synonyms> askSynonyms(String word);

  Future<(Synonym word, String reason)> askBest(
      String word, String sentence, List<String> synonyms);
}
