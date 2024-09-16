# writers

A Flutter app for non-native English speakers who write tech articles.

# Public and Practical

This project is not only for useful app but also for showing public and practical example of a Flutter project. This project is based on the comprehensive architecture, and each layer has `README.md` describing its role and rule.

# About Architecture

This project comprises three layers.

- UI
- Business Logic
- Repository

And the simplified dependency graph between each other is drawn below.

__UI -> Business Logic <- Repository__

Including other layers outside of our source code, the entire system is drawn below.

__Flutter/Dart <- UI -> Business Logic <- Repository -> Gemini/ChatGPT/etc__

The main purposes of this architecture are:

- to keep entire system testable
- to make UI interchangeable without changing logics and data
- to make repository interchangeable so that users easily can switch generative AI product to be used

# Not a "Best Practice"

Note that this architecture is NOT a "best practice" but just one of the practical examples. 

According to Martin Fowler, architecture patterns are "half baked", meaning no patterns can be applied to our projects as-is.

> I like to say that patterns are “half baked,” meaning that you always have to finish them off in the oven of your own project.

_Martin, Fowler. Patterns of Enterprise Application Architecture (Addison-Wesley Signature Series (Fowler)) (p.10)._

As I carefully write "reasons" on why the layers and constraints are necessary on each `README.md`, you can compare to your own projects and consider if each rules need to be tweaked, or even whether they are really required or not.

# Usage

If you want to run the app, see this section after generating Gemini API key.

## Flutter

```shell
$ flutter pub get
$ flutter run --dart-define=GEMINI_API_KEY=[YOUR_GEMINI_API_KEY]
```

## CLI

```shell
$ dart pub get
$ dart run lib/cli_main.dart -a synonym -w [word] -s [sentence] -g [YOUR_GEMINI_API_KEY] 
```

As CLI mode requires all the input as an argument, options of `-a` `-w` `-s` can be changed depending on what you want to do.

# Folk / Pull Request

Feel free to folk this project and test whatever feature you want to try. If you have any suggestion about commonly useful features or enhancement, kindly create your pull request. I don't guarantee your PRs will be merged immediately as the main purpose is discussion how the codebase shoud be.
