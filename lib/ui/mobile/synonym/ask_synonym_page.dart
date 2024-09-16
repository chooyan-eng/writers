import 'package:flutter/material.dart';
import 'package:intersperse/intersperse.dart';
import 'package:writers/businesslogic/synonym/suggest_synonym_usecase.dart';
import 'package:writers/businesslogic/synonym/synonym_suggestion.dart';
import 'package:writers/businesslogic/synonym/synonyms.dart';
import 'package:writers/main.dart';

class AskSynonymPage extends StatefulWidget {
  const AskSynonymPage({super.key});

  @override
  State<AskSynonymPage> createState() => _AskSynonymPageState();
}

class _AskSynonymPageState extends State<AskSynonymPage> {
  String _word = '';
  String _sentence = '';
  bool _isLoading = false;
  SynonymSuggestion? _answer;
  late final SuggestSynonymUsecase _usecase;

  @override
  void initState() {
    super.initState();
    final locator = RepositoriesLocator.of(context);
    _usecase = SuggestSynonymUsecase(
      historyRepository: locator.historyRepository,
      synonymRepository: locator.synonymRepository,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ask Synonym'),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  onChanged: (value) => setState(() => _word = value),
                  decoration: InputDecoration(
                    labelText: 'Word/Phrase',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () async {
                        FocusScope.of(context).unfocus();
                        setState(() => _isLoading = true);
                        final result = await _usecase(
                          _word,
                          sentence: _sentence.isEmpty ? null : _sentence,
                        );
                        setState(() {
                          _answer = result;
                          _isLoading = false;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  onChanged: (value) => setState(() => _sentence = value),
                  decoration: const InputDecoration(
                    labelText: 'Sentence(Optional)',
                  ),
                  minLines: 1,
                  maxLines: 3,
                ),
              ),
              const SizedBox(height: 32),
              if (_answer != null)
                Expanded(
                  child: ListView(
                    children: [
                      if (_answer!.suggested != null) ...[
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Best Suggested',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          child: _SynonymTile(_answer!.suggested!),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(_answer!.reason!),
                        ),
                        const SizedBox(height: 16),
                        const Divider(),
                      ],
                      const SizedBox(height: 16),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Synonyms',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 8),
                      ..._answer!.synonyms.synonyms
                          .where((s) => s.word != _answer!.suggested?.word)
                          .map(
                            (synonym) => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              child: _SynonymTile(synonym),
                            ),
                          ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(_answer!.synonyms.explanation),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          if (_isLoading)
            Positioned.fill(
              child: Container(
                color: Colors.white.withOpacity(0.5),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _SynonymTile extends StatelessWidget {
  const _SynonymTile(this.synonym);

  final Synonym synonym;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.green.shade50),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    synonym.word,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(synonym.explanation),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(8)),
                border: Border.all(color: Colors.green.shade50),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: synonym.examples
                    .map<Widget>(
                      (example) => Text(
                        '- $example',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )
                    .intersperse(const SizedBox(height: 4))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
