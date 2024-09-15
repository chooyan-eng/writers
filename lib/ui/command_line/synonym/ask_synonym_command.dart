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

  Future<int> call(String word) async {
    final result = await _usecase(word);
    for (final synonym in result.synonyms) {
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
    print(result.explanation);
    return 0;
  }
}
