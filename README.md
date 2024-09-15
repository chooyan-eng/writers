# writers

A Flutter app for non-native English speakers who write tech articles.

# Public and Practical

This project is not only for useful app but also for showing public and practical example of a Flutter project. This project is based on the comprehensive architecture, and each layer has `README.md` describing its role and rule.

# About Architecture



# Not a "Best Practice"

Note that this architecture is NOT a "best practice" but just one of the practical examples. 

According to Martin Fowler, architecture patterns are "half baked", meaning no patterns can be applied to our projects as-is.

> I like to say that patterns are “half baked,” meaning that you always have to finish them off in the oven of your own project.

_Martin, Fowler. Patterns of Enterprise Application Architecture (Addison-Wesley Signature Series (Fowler)) (p.10)._

As I carefully write "reasons" on why the layers and constraints are necessary on each `README.md`, you can compare to your own projects and consider if each rules need to be tweaked, or even whether they are really required or not.

# Usage

## Flutter

```shell
$ flutter run --dart-define=GEMINI_API_KEY=[YOUR_GEMINI_API_KEY]
```

## CLI

```shell
$ dart run lib/cli_main.dart -a synonym -w [word] -g [YOUR_GEMINI_API_KEY] 
```

# Folk / Pull Request

Feel free to folk this project and test whatever feature you want to try. If you have any suggestion about commonly useful features or enhancement, kindly create your pull request. I don't guarantee your PRs will be merged immediately as the main purpose is discussion how the codebase shoud be.
