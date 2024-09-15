import 'dart:convert';

import 'package:writers/businesslogic/synonym/interface/synonym_repository.dart';
import 'package:writers/businesslogic/synonym/synonyms.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiSynonymRepository implements SynonymRepository {
  GeminiSynonymRepository({required String apiKey})
      : _model = GenerativeModel(
          model: 'gemini-1.5-flash',
          apiKey: apiKey,
        );

  final GenerativeModel _model;

  @override
  Future<Synonyms> askSynonyms(String word) async {
    final prompt = _buildPrompt(word);
    final response = await _model.generateContent([Content.text(prompt)]);
    final jsonStr =
        response.text!.replaceFirst('```json', '').replaceFirst('```', '');
    return Synonyms.fromJson(
      jsonDecode(jsonStr) as Map<String, dynamic>,
    );
  }

  String _buildPrompt(String word) {
    return '''
Can you list the words or phrases that are synonymous with the word "$word"? 
In addition, generate a couple of example sentences for each word.
At last, provide a brief explanation about the difference between the words.

I'm writing an article about software development, so please provide words and examples 
related to that field.

Answer with the JSON format below so that I can parse it with programmatically.
I don't need anything other than JSON strings.

{
  "synonyms": [
    {
      "word": "synonym1",
      "explanation": "Brief explanation about the word.",
      "examples": [],
    },
    {
      "word": "synonym2",
      "explanation": "Brief explanation about the word.",
      "examples": [],
    }
  ],
  "explanation": "Brief explanation about the difference between the words."
}
''';
  }
}
