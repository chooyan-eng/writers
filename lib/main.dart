import 'package:flutter/material.dart';
import 'package:writers/businesslogic/history/interface/history_repository.dart';
import 'package:writers/businesslogic/synonym/interface/synonym_repository.dart';
import 'package:writers/repository/gemini/synonym/gemini_synonym_repository.dart';
import 'package:writers/repository/in_memory/history/in_memory_history_repository.dart';
import 'package:writers/repository/in_memory/history/in_memory_history_storage.dart';
import 'package:writers/ui/mobile/synonym/ask_synonym_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoriesLocator(
      historyRepository: InMemoryHistoryRepository(
        storage: InMemoryHistoryStorage(),
      ),
      synonymRepository: GeminiSynonymRepository(
        apiKey: const String.fromEnvironment('GEMINI_API_KEY'),
      ),
      child: const MaterialApp(
        home: AskSynonymPage(),
      ),
    );
  }
}

class RepositoriesLocator extends InheritedWidget {
  final SynonymRepository synonymRepository;
  final HistoryRepository historyRepository;

  const RepositoriesLocator({
    super.key,
    required super.child,
    required this.synonymRepository,
    required this.historyRepository,
  });

  static RepositoriesLocator of(BuildContext context) {
    return context.getInheritedWidgetOfExactType<RepositoriesLocator>()!;
  }

  @override
  bool updateShouldNotify(covariant RepositoriesLocator oldWidget) {
    return false; // never rebuilt
  }
}
