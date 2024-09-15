# Repository for Business Logic

Repository has an implementation for Business Logic layer.

Repositories' responsibility is implementing interfaces that business logics require, with the implementation detail depending on what databases they use.

Repositories solve all the issues happend on databases. Even if the actual scheme is different from what business logics need, they manage to interpret the data accordingly and return it without exposing those issues.