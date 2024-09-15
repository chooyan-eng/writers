import 'package:writers/businesslogic/synonym/interface/synonym_repository.dart';
import 'package:writers/businesslogic/synonym/synonyms.dart';

class FakeSynonymRepository implements SynonymRepository {
  @override
  Future<Synonyms> askSynonyms(String word) async {
    return const Synonyms(
      explanation: 'This is a fake explanation',
      synonyms: [
        Synonym(
          word: 'foo',
          explanation: 'This is a fake explanation for the word foo',
          examples: [
            'This is an example sentence with the word foo',
            'This is another example sentence with the word foo'
          ],
        ),
        Synonym(
          word: 'bar',
          explanation: 'This is a fake explanation for the word bar',
          examples: [
            'This is an example sentence with the word bar',
            'This is another example sentence with the word bar'
          ],
        ),
      ],
    );
  }
}
