import 'package:writers/businesslogic/synonym/synonyms.dart';

abstract interface class SynonymRepository {
  Future<Synonyms> askSynonyms(String word);
}
