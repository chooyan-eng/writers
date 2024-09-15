# Business Logic

If you have something you want to achieve even if you don't have a software, that is "Business Logic".

Business logic represents a process of your business without concrete implementation detail. 

Business logic contains:

- Steps to achieve one objective
- Input(s) which affect the result
- Output you want to retrieve
- Side effects happening during the process

On the other hand, it isn't interested in:

- Concrete method for interaction with users
- Concrete storage and how data is fetched/stored

All business logics are interested in are the process itself and what data affects the decision making during the process.

# Independent from Other Layers

Business logic don't depend on any other layers. In other words, no compile error occurs even when you delete all the folders except for `lib/businesslogic`.

Business logic also don't depend on concrete frameworks, Flutter for example, or concrete databases like Firebase. 

If you want to make business logics to interact with repositories, define an interface class and interact with that.

```dart
/// an interface for repository.
/// this interface have to be defined in businesslogic folder
/// so that business logics don't depend on other layers.
abstract interface class SynonymRepository {
  Future<Synonyms> askSynonyms(String word);
}
```

```dart
/// business logic refers an interface, not concrete implementation.
final result = await synonymRepository.askSynonyms(input);
```

Don't be interested in repositories' implementation. Business logics are always arrogant and define whatever method and returned type they want without considering other layers. It's repository's responsibility to generate the concrete data that business logics need.

As long as business logics are independent from other layers, this layer can:

- be reusable even if UI layer changes
- replace concrete repository implementations
- testable by replacing repository implementations into mock

# "Business" Logic

Because business logic refers to "something you want to achieve even if you don't have a software", non-programmers, project manager for example, are interested in this layer the most.

This layer represents their "business", meaning the source code in this folder (and associated `test` folder) will describe how this software behaves and what each logic affects to our business.

# UseCase?

In this project, each business logic class is named with the suffix of "UseCase". I don't discuss the precise idea of "Usecase" as I don't know much about it, so feel free to suggest more relevant words.
