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

## Keywords

Here are a list of keywords used in ```Dart``` - 

:exclamation: Ideally, keywords cannot be used as identifiers.

| Table         | of           | Keywords in    | ```Dart```  |
|---------------|--------------|----------------|-------------|
| abstract (2)  | dynamic (2)  | implements (2) | show (1)    |
| as (2)        | else         | import (2)     | static (2)  |
| assert        | enum         | in             | super       |
| async (1)     | export (2)   | interface (2)  | switch      |
| await (3)     | extends      | is             | sync (1)    |
| break         | external (2) | library (2)    | this        |
| case          | factory (2)  | mixin (2)      | throw       |
| catch         | false        | new            | true        |
| class         | final        | null           | try         |
| const         | finally      | on (1)         | typedef (2) |
| continue      | for          | operator (2)   | var         |
| covariant (2) | Function (2) | part (2)       | void        |
| default       | get (2)      | rethrow        | while       |
| deferred (2)  | hide (1)     | return         | with        |
| do            | if           | set (2)        | yield (3)   |

**NOTE**

The numbers present in front of the keywords have the following meaning - 

1.  **Keywords marked with ```1```**

    Keywords marked with ```1``` are called ```contextual keywords``` and they only have meaning only in specific places. They can be used as identifiers elsewhere.

1.  **Keywords marked with ```2```**

    The keywords marked with ```2``` are called ```built-in identifers```. They are valid identifiers in most places but they can't be used as class or type names, or as import prefixes.

1.  **Keywords marked with ```3```** 

    The keywords marked with ```3``` are related to asychrony support. 
    
    :warning: They cannot be used as an identifier in any function body marked with ```async```, ```async*```, ```sync*```. 

:exclamation: Keywords that haven't been marked cannot be used as identifiers anywhere. They are reserved.

## Variables

We can create variables in ```Dart``` using the ```var``` keyword. 

Here is an example  - 

```dart
var fruit = 'Watermelon';
```

A data type can also be specified for variables. Here is an example - 

```dart
String fruit = "watermelon";
```

:warning: If we don't want to restrict the data type, we can use make use of ```Object``` or ```dynamic``` keyword. 

### Object vs dynamic 

When ```dynamic``` keyword is used, the user will not get any errors when a method is called on it. However, when the ```Object``` type is used and if the user invokes a invalid method on it, an error will be raised. 

Here is an example - 

```dart
dynamic a;

Object b;

// no error will be thrown 
a.length();

// error will be thrown
b.length();
```

:warning: In the above code snippet, the dynamic variable ```a``` can contain any data type value, and by default when the ```dynamic``` keyword is used, type checking is disabled.

:warning: In the above code snippet, the Object variable ```b``` can also contain any data type value. But if an invalid method is invoked on the variable, an error will be thrown.

:exclamation: Please read [this](https://stackoverflow.com/questions/31257735/what-is-the-difference-between-dynamic-and-object-in-dart/31264980#31264980) stackoverflow post for more details.

### Default value

:warning: Uninitialized variables have an initial value of ```null```. Even numbers types get assigned ```null``` because of all data types in dart are objects. 

### final and const

If the value of a variable is not to be changed, then the ```final``` or ```const```keyword can be used, depending on the situation. There minor subtles between the usages of ```final``` and ```const``` keyword.

**const**

```const``` keyword is used to make a variable store a ```compile-time-constant-value```. ```Compile-time-constant-value``` is a value which will be constant while compiling. It can be used to store a ```const``` value in a variable.

:warning: It should be initialized at the same line.

Here is an example - 

```dart
const a = 5;

const var b = 10;

const int c = 20;
```
:warning: Class-level const variable have to be static.

:warning: We cannot use ```const``` for instance variables of a class. However, instance variables can be final.  

Here is another set of example - 

```dart
class Watermelon {
    static const var fruit = "Watermelon";
}

// This is NOT ACCEPTABLE in Dart.
class Lychee {
    const fruit = "Lychee";
}
```

#### More on const keyword

```const``` can be used to objects immutable. In order to make a class object immutable, we have to do the following - 


1. Make all instance variables final.

1. Declare the constructor as const.

Here is an example for the same - 

```dart
class A {
    
    final a, b;

    const A(this.a, this.b);
}

main(List<String> args) {

    // An immutable object 
    const immutableObject = const A("Watermelon", "Delicious");

    // A mutable object with a const value
    A mutableObject = const A("Watermelon", "yum, yum, yum");
}
```

:warning: ```const``` can be used to store constant values. It can also be used to create ```const``` variable and store ```const``` values in it. 

:warning: It can also be used to create constant values, as well as to declare constructors that create constant values. Any variable can have a constant value.

:warning: We can change the value of non-final, non-const variable, even if it used to have a const value. However, if a variable is defined as ```final``` or ```const``` its value cannot be changed.

**final**

"final" means single-assignment: a final variable or field must have an initializer. Once assigned a value, a final variable's value cannot be changed. final modifies variables. 

Here is an example - 


```dart
final var awesome_fruit = "watermelon";

final delicious_fruit = "square watermelon";
```

:warning: We can declare and assign values to final variables without specifying its type.


## Built-in types 

```Dart``` has special support for a few types which are as follows - 

1. numbers
1. strings
1. booleans
1. lists (also known as arrays)
1. maps
1. runes (for expressing Unicode characters in a string)
1. symbols

We can initialize these data types with literals. 

:warning: Since, all variables are objects in ```Dart```, even constructors can be used to initialize variables.

### Numbers 

There are two variations of Numbers in ```Dart``` - 

1. **```int```**

1. **```double```**