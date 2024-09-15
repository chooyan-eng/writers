import 'dart:io';

import 'package:args/args.dart';
import 'package:writers/repository/gemini/synonym/gemini_synonym_repository.dart';
import 'package:writers/repository/in_memory/history/in_memory_history_repository.dart';
import 'package:writers/repository/in_memory/history/in_memory_history_storage.dart';
import 'package:writers/ui/command_line/synonym/ask_synonym_command.dart';

Future<void> main(List<String> args) async {
  final parser = ArgParser();
  parser.addOption('gemini-key', abbr: 'g');
  parser.addOption('action', abbr: 'a', allowed: ['synonym']);
  parser.addOption('word', abbr: 'w');

  final results = parser.parse(args);

  final historyRepository = InMemoryHistoryRepository(
    storage: InMemoryHistoryStorage(),
  );
  final synonymRepository = GeminiSynonymRepository(
    apiKey: results.option('gemini-key')!,
  );

  final resultCode = switch (results.option('action')) {
    'synonym' => await AskSynonymCommand(
        historyRepository: historyRepository,
        synonymRepository: synonymRepository,
      )(results.option('word')!),
    _ => 1,
  };
  if (resultCode != 0) {
    exit(1);
  }
}
