# Dart Tutorial

This directory contains tutorial on ```Dart``` language which is of intermediate level.

##  Exceptions

```Dart``` allows the user to ```throw``` and ```catch``` exceptions. Exceptions are errors indicating that something unexpected occured. 

:warning: If an exception isn't caught the program will be terminated.

:warning: All of the exceptions present in ```Dart``` are unchecked exceptions (runtime exceptions). 

:warning: Since, all of the exceptions are unchecked exceptions, methods are not required to declare exceptions they might throw and also we are not required to catch the exceptions.

```Dart``` provides two types for exception handling - 

1. Exception 
1. Error

### Exception

It is a **marker interface** that is implemented by all core library exceptions.

> An Exception is intended to convey information to the user about a failure, so that the error can be addressed programmatically. It is intended to be caught, and it should contain useful data fields.

### Error

Error objects are thrown in case a program failure. 

> An Error object represents a program failure that the programmer should have avoided.

> Examples include calling a function with invalid arguments, or even with the wrong number of arguments, or calling it at a time when it is not allowed.

:warning: These are not errors that a caller should expect or catch - if they occur, the program is erroneous, and terminating the program may be the safest response.

:exclamation: There are other subtypes of ```Exception``` and ```Error``` types.

<hr>

The following keywords are used for Exception Handling in ```Dart``` - 

1. throw
1. catch
1. on
1. rethrow
1. finally

### Throw 

```throw``` keyword is used to throw or raise an exception. ```Dart``` allows the user to throw arbitrary objects too.

Here is an example -

```dart
throw FormalException('Fruit not found!');

throw 'Watermelon missing!';
```

:warning: Production quality code usually throw exception of type ```Exception``` or ```Error``` and not any arbitrary object.

:warning: Throwing an exception is an exception hence it can also be used with ```fat arrows (=>)```. 

Here is an example - 

```dart
void watermelonMissing() => throw 'Missing Watermelon';
```

### Catch and On

Catching an exeption allows us to handle the exception and it also prevents the application from crashing. 

:warning: It also prevents the exception from propagating.

Here is an exmaple - 

```dart
try {
    eatFruits();
} on MissingWatermelonException {
    buyWatermelons();
}

try {
    eatFruit();
} on MissingWatermelonException {
    buyWatermelons();
} on MissingLycheeException catch (lycheeException){
    buyLychees();
} catch (e) {
    buyDeliciousFruits();
    print('We are out of edible items $e')
}
```

:warning: To handle exceptions we can use both ```on``` and ```catch``` keywords. The ```catch``` keyword is to be used when, we want to do something with the exception. The ```on``` keyword is used when the user just wants to handle the exception, without doinf anythong specific with the exception.

:exclamation: The ```catch(e, s)``` keyword can also take in 2 arguments. The first argument is the exception that is to be captured and the second keyword is the stacktrace. 

Here is an example - 

```dart
try {
    eatFruits();
} catch (exception, stackTrace) {
    print("This is the exception: $exception.\nAnd this is the stackTrace $stackTrace");
}
```

### Rethrow

The ```rethrow``` keyword is used to partially handle an exception. It allows an exception to be propagated partially.

Here is an example - 

```dart
try{
    eatFruits();
} catch (e) {
    print("Here is an exception: $e.");
    rethrow;
}
```

### Finally

```finally``` execute a piece of code that executes irrespectice of whether or not it throws an exception.

Here is am example -

```dart
try {
    eatFruits();
} catch (e) {
    print("Here is the exception $e.");
} finally {
    buyAndEactFruits();
}
```

:warning: If no catch clause matches the exception, the exception is propagated after the finally clause runs.