// ignore_for_file: avoid_print

import 'package:writers/businesslogic/history/interface/history_repository.dart';
import 'package:writers/businesslogic/synonym/interface/synonym_repository.dart';
import 'package:writers/businesslogic/synonym/suggest_synonym_usecase.dart';

class AskSynonymCommand {
  AskSynonymCommand({
    required HistoryRepository historyRepository,
    required SynonymRepository synonymRepository,
  }) : _usecase = SuggestSynonymUsecase(
          historyRepository: historyRepository,
          synonymRepository: synonymRepository,
        );

  final SuggestSynonymUsecase _usecase;

  Future<int> call(String word, {String? sentence}) async {
    final result = await _usecase(word, sentence: sentence);

    if (result.suggested != null) {
      print('*Suggested*');
      print('${result.suggested!.word}: ${result.suggested!.explanation}');
      print('');
      for (final example in result.suggested!.examples) {
        print('- $example');
      }
      print('');
      print(result.reason);
      print('');
      print('-' * 10);
    }

    for (final synonym in result.synonyms.synonyms) {
      print('');
      print('${synonym.word}: ${synonym.explanation}');
      print('');
      for (final example in synonym.examples) {
        print('- $example');
      }
      print('');
      print('=' * 10);
    }
    print('');
    print(result.synonyms.explanation);
    return 0;
  }
}
