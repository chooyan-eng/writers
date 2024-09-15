# Command Line Interface

This folder is for command line interface. 

# No Dependency to Flutter

As all the programs in this folder are supporsed to run with `dart run`, no files can't depend on Flutter APIs, such as `Widget`s, `BuildContext`, `visibleForTesting`, etc. Some state-management packages directly depending on Flutter, `provider` for example, are also unavailable.

Keeping the files independent from Flutter makes them easier to test with unit test, not widget test, which is more handy to write test codes.

