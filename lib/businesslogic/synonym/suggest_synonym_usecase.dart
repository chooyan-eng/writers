import 'package:writers/businesslogic/history/interface/history_repository.dart';
import 'package:writers/businesslogic/synonym/interface/synonym_repository.dart';
import 'package:writers/businesslogic/synonym/synonym_suggestion.dart';
import 'package:writers/businesslogic/synonym/synonyms.dart';

class SuggestSynonymUsecase {
  final SynonymRepository synonymRepository;
  final HistoryRepository historyRepository;

  SuggestSynonymUsecase({
    required this.synonymRepository,
    required this.historyRepository,
  });

  Future<SynonymSuggestion> call(String word, {String? sentence}) async {
    final cached = await historyRepository.loadSynonyms(word);
    late final Synonyms synonyms;
    if (cached == null) {
      final result = await synonymRepository.askSynonyms(word);
      await historyRepository.saveSynonyms(word, result);
      synonyms = result;
    } else {
      synonyms = cached;
    }
    if (sentence == null) {
      return SynonymSuggestion(synonyms: synonyms);
    }

    final best = await synonymRepository.askBest(
      word,
      sentence,
      synonyms.synonyms.map((e) => e.word).toList(),
    );

    return SynonymSuggestion(
      synonyms: synonyms,
      suggested: best.$1,
      reason: best.$2,
    );
  }
}
