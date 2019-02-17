# Dart Basics

This directory contains basics of ```Dart``` language. 

## Writing a basic ```Dart``` Program

You can find the hello_world program [here](#). 

If you look at the hello_world program, you'll notice the following the following - 

1. main() method is not present inside a class unlike ```Java```. In ```Dart```, the main() method sits in the highest level i.e. outside of any class.

1. ```var``` keyword is used to declare a varible without mentioning its type. 

1. ```int``` is a data type.

1. ```Dart``` allows String interpolation. ```$variableName``` or ```${expression}``` can be used to interpolate strings with other types.

1. The ```main()``` method also contains command-line arguments which can be accessed form the ```List<String> args``` argument of the main method.

1. ```print()``` is a simple method which can used to print things to the console.

## Some important concepts 

Here are some important features that is unique to ```Dart``` - 

1. Everything you can place in a variable is an object, and every object is an instance of a class. Even numbers, functions, and null are objects. All objects inherit from the Object class.

1. ```Dart``` is a strongly typed language. 

1. ```Dart``` supports generic types.

1. ```Dart``` supports top-level functions (such as main()). It also supports functions tied to classes or objects (static and instance methods respecively). ```Dart``` also supports creation of fuctions within functions. 

1. ```Dart``` also supports top-level variables, i.e. it can have variables tied to classes or to objects (static or instance variables). 

1. ```Dart``` doesn't have private, public, protected keywords. In ```Dart``` if an entity starts with an underscore(_), it is private to its library.

1. ```Dart``` has both expresions and statements. Expresions have contain some value at run-time whereas statements don't have any value at run-time.

1. ```Dart``` can report problems in two ways - 

    1.  ```warnings```

        They just indicate that something might not work in the application but they don't prevent the app from running.

    1.  ```errors```

        Errors will interfare with the execution of the program. There are two types of errors - 

        1.  Compile-time errors

            A compile-time error prevents the code from executing at all. 

        1.  Run-time errors

            A Run-time error results in an exception being raised while the code executes.

