# UI for Input/Output

UI stands for "User Interface". 

This layer's business is to accept input from users and display ouput to them regardless of the concrete method. 

Some users may want to use the system as a mobile app installed to their Android/iOS. Other may want to use the system via their terminal. Web API, voice, or other interfaces are also possible.

# Interchangeable

UI is interchangeable. Users can choose with what interface they interact with the system without changing businesslogic.

Regardless of the interfaces, users can ask synonyms of "get" to the system, for instance, and the system will display "request", "fetch", "retrieve", etc would be possible as its answer with whatever method.

# No Business Logic

UI never has business logics. Yet, it doesn't mean "UI doesn't have any logics". 

UI *does* have logics on:

- how its appearance should be changed depending on retrieved data
- when it displays dialogs, navigates to other pages, etc.
- how they manage app state

All these are logics and can(should) be tested with the testing tool provided by each platform.

