import 'package:writers/businesslogic/history/interface/history_repository.dart';
import 'package:writers/businesslogic/synonym/interface/synonym_repository.dart';
import 'package:writers/businesslogic/synonym/synonyms.dart';

class SuggestSynonymUsecase {
  final SynonymRepository synonymRepository;
  final HistoryRepository historyRepository;

  SuggestSynonymUsecase({
    required this.synonymRepository,
    required this.historyRepository,
  });

  Future<Synonyms> call(String word) async {
    final cached = await historyRepository.loadSynonyms(word);
    if (cached == null) {
      final result = await synonymRepository.askSynonyms(word);
      await historyRepository.saveSynonyms(word, result);
      return result;
    } else {
      return cached;
    }
  }
}
