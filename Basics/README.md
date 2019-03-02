# Dart Basics

This directory contains basics of ```Dart``` language. 

## Writing a basic ```Dart``` Program

You can find the a simple **hello_world** program [here](https://github.com/AbhilashG97/Watermelon-Pie/blob/master/Basics/Sample%20Programs/hello_world.dart). 

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

```final``` means single-assignment: a final variable or field must have an initializer. Once assigned a value, a final variable's value cannot be changed. final modifies variables. 

Here is an example - 

```dart
final var awesomeFruit = "watermelon";

final deliciousFruit = "square watermelon";
```

:warning: We can declare and assign values to final variables without specifying its type.

:warning: Please read [this](https://stackoverflow.com/questions/50431055/what-is-the-difference-in-between-const-and-final-keyword-in-dart) StackOverflow post for more details.

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

1.  **```int```**

1.  **```double```**

:warning: Both are subtypes of ```num```.

They include basic functions like  ```abs()```, ```floor()```, ```ciel()``` etc. ```dart:math``` contains extra mathematical functions as well.

:warning: If a number contains a decimal then it is a ```double``` else it is ```int```. 

Here are a few examples - 

```dart
// These are integers
var y = 12;
var someHexValue = 0xAEFF;

// These are decimals
var fruitPrice = 10.0;
var someWeirdValue = 1.424e5;
```

:warning: ```Dart``` automatically converts values to double.

```dart
// some value will be converted to 2.0 automatically
double someValue  = 2;
```

#### Number to String conversion and vice-versa

We can convert a number to a String using the ```toString()``` and ```toStringAsFixed()``` method; and similarly a String value can be converted to a number using the ```parse()``` of ```int``` and ```double``` double data type.

Here is an example - 

```dart
String stringInteger = 1.toString();
String stringDouble = 1.1.toString();
String anotherStringDouble = 1.23232.toStringAsFixed(2);

var someInteger = int.parse('1');
var someDouble = double.parse('1.12');
```

:warning: Literal numbers are compile-time constants.

### Strings

A String in ```Dart``` is a sequence of **UTF-16 code units**. 

:warning: A ```Dart``` String can be created with either **single quotes** or **double quotes**. 

Here is an example - 

```dart
var someString = 'This is a string';
var anotherString = "This is another string";
```

:warning: ```Dart``` supports String interpolation. ```${Expression}``` can be used to add expressions in a String. If a variable is to be interpolated with a String ```$variableName``` is enough.

:warning: Strings can be concatenated with the ```+``` opertor. 

:warning: Multi-line strings can be created with the help of triple quotes, ```''' '''``` or ```""" """```.

:exclamation: A **raw string** in ```Dart``` can be created by prefixing it with r. In a raw string the string is read as is, no escape characters are interpretted.

Here are some examples - 

```dart
var multilineString = """Thi
is a 
multi-line 
String""";

var rawString = r"This is a raw string";
```
:warning: Please read [this](https://stackoverflow.com/questions/21521729/how-do-i-reverse-a-string-in-dart) StackOverflow post too.

### Boolean

```Dart``` also has boolean values. Boolean values in ```Dart``` are repsented by the ```bool``` keyword. ```bool``` variables can contain either ```true``` or ```false``` values.

Here is an example - 

```dart
var aBooleanVariable = true;
```

### Lists 

In ```Dart``` arrays are represnted through ```List objects```. 

:warning: Lists in ```Dart``` are 0 index based.

:warning: To create list that is a compile-time-constant, add the ```const``` keyword before the list literal.

Here are a few examples - 

```dart
var integerList = [1, 2, 3, 4];

// a compile time constant list 
var someList = const [1, 2, 4, 5,]; 
```

### Maps 

Maps in ```Dart``` are quite similar to Maps in ```Python```. A map can be used to store key-value pairs. 

:warning: Both key and value can be any type of object. Keys of the same value cannot be used.

:warning: Maps are generic, however the analyzer automatically infers the type specified in the Map.

Here is an example - 

```dart

var fruitDesserts = {
    "watermelon" : "watermelon icecream",
    "banana" : "banana icecream sundae",
    "lychee" : "lychee icecream"
    };

var favoriteFruitList = {
    1 : "watermelon",
    2 : "apple",
    3 : "lychee"
};
```

A map can also be created using the constructor as well. 

Here is an example - 

```dart
var fruitMap = Map();
fruitMap["watermelon"] = "awesome fruit";
```

:warning: If a key which is not present in the map is specified, a null value is returned.

:warning: ```.length``` can be used to find the number of key-value pairs present in the map. 

:exclamation: To create a map which contains values that are compile-time-constants, we can use the ```const``` keyword.

:warning: ```List.asMap``` can be used to convert a list to a map. 

### Runes

Runes are the ```UTF-32``` code points of a string.

:exclamation: The usual way to express a Unicode code point is \uXXXX, where XXXX is a 4-digit hexadecimal value.

:warning: To specify more or less than 4 hex digits, place the value in curly brackets.

Here is an example - 

```dart
var watermelon = '\u{1f349}';
print(watermelon);
```

## Functions

In ```Dart``` even functions have a type, i.e. ```Function```. ```Dart``` is a true object oreinted language where everything is an object.

:warning: This means that functions can be assigned to variables or passed as arguments to other functions. You can also call an instance of a ```Dart``` class as if it were a function.

Here is an example - 

```dart
bool isWatermelon(String fruit) {
    return fruit == 'watermleon';
}

isWatermelon(fruit) {
    return fruit == 'watermelon';
}
```

:warning: It is possible to write functions without type in ```Dart```, however it is not recommended to do so.

A function in ```Dart``` can also be defined in a single line using the arrow notation (```=>```).

Here is an example - 

```dart
bool isWatermelon(String fruit) => fruit == 'watermelon';
```

:warning: The arrow syntax is a shorthand for ```{return expression;}```. Therefore, only expressions can be used with the arrow. A statement cannot be used with arrow expression. An example of a statement can be a ```if-else``` statement. 

### Parameters in Dart

In ```Dart``` there are two kinds of parameters - 

1. Required parameters
1. Optional parameters

:warning: The required parameters are listed first followed by the optional parameters.

The optional parameters are of two types - 

1. Named optional parameters
1. Positional optional parameters

:warning: Please read [this](https://stackoverflow.com/questions/13264230/what-is-the-difference-between-named-and-positional-parameters-in-dart) StackOverflow post on Optional parameters in ```Dart```.

#### Named Optional Parameters

Named optional parameters can be created using the ```{}``` braces. 

Here is an example - 

```dart
void awesomeFruits(String okayishFruit, {String favouriteFruit, String awesomeFruit}) {
    print("This is an awesome fruit : " + awesomeFruit);
}

void main() {
    awesomeFruits("Sapote", favouriteFruit: "watermleon", awesomeFruit: "watermelon");
}
```

:warning: While using named optional parameters, the name of the parameter has to be specified. The named parameter can be called in any order, but the name of the parameter has to be specified.

:warning: Also, ```@required``` annotation can be used to specify named optional parameters.

Here is am example - 

```dart
void someFruitWidget(String title, @required Widget child) {
    // Do something here.
}
```
#### Optional Positional Parameters

Positional Parameters are created using ```[]``` braces. 

:warning: In positional parameters we don't have to specify the names of the parameters but the arguments have to be entered **sequentially** and in the **exact order** as specified. Also, while entering the arguments we cannot  change the order.

Here is an example - 

```dart
String someFruits(int numberOfFruits, [String fruitOne, String fruitTwo, String fruitThree]) {
    return "Awesome fruit - $fruitOne";
}

void main() {
    print("Here is an awesome fruit ${someFruits(1, "watermelon")}");
}
```

#### Default Parameter Values

Default values can be given to optional parameters in ```Dart```. ```=``` symbol can be used to assign default values.

Here is an example - 

```dart
void awesomeDessert(int numbers, {String dessertTopping = "tuty fruity", String sweetness = "okayish sweet!"}) {
    print("This is an awesome dessert : $dessertTopping")
}

void awesomeMethod(int number,  {List<String> fruits = ["Apple", "Watermelon", "Orange"], String someValue = "someValue"}) {
    print("This is a parameter with a default value : $fruits");
}
```

### The main() funtion

The ```main()``` function returns ```void``` and it serves as an entry point to the application. The ```main()``` function also takes in ```List<String> args``` as command line argument. 

Here is an example - 

```dart
void main() {

}

void main(List<String> args) {

}
```

:warning: A ```Dart``` program cannot run without the ```main()``` method.

### Functions as first-class objects

```Dart``` also allows us to pass functions as parameters to other functions.

Here is an example - 

```dart
void printFruits(String fruit) {
    print("Here is an awesome $fruit.");
}

var fruits = ['Watermelon', 'Mango', 'Lychee'];

fruits.forEach(printFruits);
```

Also a function can be assigned to a variable.

Here is an example - 

```dart
var printUppercasFruit = (fruit) => fruit.toUpperCase();


void main() {
    printUppercasFruit('Watermelon');
}
```

### Anonymous Functions

Nameless functions can also be created in ```Dart```. It is often referred to as a ```lambda``` or ```closure```. A anonymous function can be assigned to variable and tha variable can be used in its place.

Here is an example - 

```dart
var fruitList = ['watermelon', 'mango', 'apple'];
fruitList.forEach((fruit) {
    print("Here is na awesome $fruit.");
});
```

:exclamation: The above code can be further shortened. Below is an example of the shortened verision of a anonymous function.

:warning: The shortened version mentioned below can only be used when there is only a single statement present in the anonymous function.

```dart
var fruitList = ['watermelon', 'mango', 'apple'];
fruitList.forEach((fruit) => print("Here is an awesome $fruit."));
```

### Lexical Scope

```Dart``` happens to be a lexically scoped language. This means that the scope of the variables can be determined statically, simply by the layout of the code. 

Below is an example for the same - 

```dart
String godFruit = 'Watermelon';

void main() {
    var awesomeFruit = 'Apple';

    void aFruitMethod() {
        var greatFruit = 'Lychee';

        void anotherFruitMethod() {
            print(godFruit);
            print(awesomeFruit);
            print(greatFruit);
        }
    }
}
```

:warning: Please notice that the inner most function is able to access all the variables, even the ones present at outer levels.

### Lexical closures

The ```Dart``` documentation defines lexical closure as follows - 
	
> A closure is a function object that has access to variables in its lexical scope, even when the function is used outside of its original scope. Functions can close over variables defined in surrounding scopes.

You can find an example for lexical closures in this [file](#).

### Testing functions for equality

The ```assert()``` method can be used to test various methods in ```Dart```.

### Return values

Every function in ```Dart``` returns a value. 

:warning: If no return value is specified in method signature then ```null``` is returned by default. The ```return null;``` statement is implicitly added to the function body.

## Operators

This ```Dart``` [file](#) contains sample programs on operators. 

The official ```Dart``` documentation lists the following operators -

| Description              | Operator                                                                      |
|--------------------------|-------------------------------------------------------------------------------|
| unary postfix            | expr++    expr--    ()    []    .    ?.                                       |
| unary prefix             | -expr    !expr    ~expr    ++expr    --expr                                   |
| multiplicative           | *    /    %  ~/                                                               |
| additive                 | +    -                                                                        |
| shift                    | <<    >>                                                                      |
| bitwise AND              | &                                                                             |
| bitwise XOR              | ^                                                                             |
| bitwise OR               | |                                                                             |
| relational and type test | >=    >    <=    <    as    is    is!                                         |
| equality                 | ==    !=                                                                      |
| logical AND              | &&                                                                            |
| logical OR               | ||                                                                            |
| if null                  | ??                                                                            |
| conditional              | expr1 ? expr2 : expr3                                                         |
| cascade                  | ..                                                                            |
| assignment               | =    *=    /=    ~/=    %=    +=    -=    <<=    >>=    &=    ^=    |=    ??= |

:warning: The opertors listed above have been mentioned in the order of decreasing precedence, i.e. the operators present below a given operator in the above table have less precedence than the ones mentioned above them.

:boom:  For operators that work on two operands, the leftmost operand determines which version of the operator is used. For example, if you have a Vector object and a Point object, ```aVector + aPoint``` uses the **Vector version** of ```+```.

:warning: ```~/``` operator can be used to get the integer result of a division.

### Similarity between objects

We can use ```==``` to check whether two objects represent the same thing. 

:warning: If however we need to check whether two objects are exactly the same object, we can use the ```identical()``` method.

### Type test operators

The below mentioned operators can be used to check types at runtime.

| Operator | Meaning                                          |
|----------|--------------------------------------------------|
| as       | Typecast (also used to specify library prefixes) |
| is       | True if the object has the specified type        |
| is!      | False if the object has the specified type       |

#### as operator 

The ```as``` operator is used to type cast an object to a particular type. However, if the object is null or is of some other type then an exception will be thrown. 

Here is an example - 

```dart
(watermelon as Fruit).getFruitName();
```

#### is and is!

This operator checks whether a given object is of a specific type or not. 

Here is an example - 

```dart
if(fruit is Watermelon) {
    print('yay!!');
}

if(fruit is! watermelon) {
    print('-_-;');
}
```

#### Assignment operators

In ```Dart``` we can assign a value to a variable ```iff``` it is ```null```. This can be done with the help of the ```??=``` operator. 

Here is an exmaple - 

```dart
var b ??= 12; 
```

:warning: Here ```b``` will be given the value of 12, if it is ```null```.

#### Conditional expressions

There are two types of conditional operators in ```Dart``` which are as follows - 

1.  ```condition ? expr1 : expr2```

    Here, if the condition is true, then ```expression 1``` is evaluated and returned else ```expression 2``` is evaluated and returned.

1.  ```expr1 ?? expr2```

    Here, ```expression 1``` is evaluated and returned if it is not null, else ```expression 2``` is evaluated and returned.  

Here are some examples - 

```dart
var awesomeness = (fruit.getFruitName() == 'watermelon') ? "God-level awesomeness" : "Blaaaaah";

void setFruitName(String fruit) => fruit ?? "watermelon";
```

:warning: The second version of the conditional expression can be used in cases where a variable has to be tested for a ```null``` value.

:warning: The first exoression can be used in cases where a condition evaluates to either a true or false value.

#### Cascade notation (..)

The cascade notation is used to perform a sequence of operations on a single object. A chain of operations can be performed on a single object.

Here is an example -

```dart
    var fruit = getSomeFruit()
                ..name = "watermelon"
                ..price = 0
                ..isFruitAwesome();                
```

:warning: The cascade operator performs operations on the object received from the first operation. If the first operation returns a ```null``` value, then cascade operation cannot be performed.

:exclamation: Be careful to construct your cascade on a function that returns an actual object.

:warning: Strictly speaking, the “double dot” notation (```..```) for cascades is not an operator. It’s just part of the Dart syntax.

#### Other operators

```Dart``` also has a ```conditional member access operator```. Here, ```x?.p``` evaluates to ```x.p``` if ```x``` is not ```null```, otherwise evaluates to ```null```.

Here is an example - 

```dart
var fruit = watermelon?.lychee;
```

## Control Flow Statements

Please view [this](#) dart file for more sample code on control-flow.

With the control flow statements we can control the flow of our application. ```Dart``` supports the following control flow statements -

1. if and else
1. for loops
1. while and do-while loops
1. break and continue
1. switch and case
1. assert

### If and Else statements

```Dart``` has if-else statements. It is quite similar to the one present in ```Java```. Here is an example - 

```dart
if (isFruitAwesome) {
    sayWatermelon();
} else if (isFruitGreat()) {
    sayLychee();
} else {
    drinkWater();
}
```

### For loops 

```Dart``` has various loops that can be used to perform iterative tasks. The following types of loops are present in the ```Dart```- 

1. ```for-loop```
1. ```while loop```
1. ```do while loop```

#### for loop 

The for loop present in ```Dart``` is quite similar to the one present in ```Java```. 

Here is an example - 

```dart
for(var i = 0; i<10; i++) {
    print("This is an awesome counter $i.");
}
```

##### Some variations of the for loop

Below mentioned are a few variations of the ```for``` loop.

:warning: If the object we are iterating over is an itearable, then the ```forEach()``` loop can also be used. 

:warning: The ```forEach()``` used in ```Dart``` is quite simiar to the one used in ```Java```.

:warning: Another variation is the ```for-in-loop```. 

Here is an example of the ```for-in-loop``` - 

```dart
var fruitList = ["watermelon", "lychee", "mango"];
for (fruit in fruitList) {
    print("This is a fruit $fruit");
}
```

#### while loop

A ```while loop``` in ```Dart``` is similar to the one present in ```Java```. The condition is specified inside the ```while loop``` and it executes as long the condition is ```true```. 

Here is an example - 

```dart
while(isFruitDelicious()) {
    eatFruit();
}
```

#### do while loop

A ```do while``` loop in ```Dart``` is similar to the ```do while``` loop present in ```Java```.

Here is an example - 

```dart
do {
    print('watermelon!')
} while (isFruit());
```

:warning: A do-while loop will always execute once.

#### break and continue

The usage of ```break``` and ```continue``` keywords is exactly the same as that of ```Java```. 

:warning: The ```continue``` keyword can be used to skip to the next loop iteration.

#### switch and case

The ```switch``` and ```case``` in ```Dart``` is quite simiilar to the one in ```Java```. 

:warning: The switch can be used to compare integer, string, or compile-time constants using ==.

:warning: The objects that are being compared must of the same class and **not** of any of its sub-types. 

Here is an example - 

```dart

var fruit = 'watermelon';

switch(fruit) {
    case 'watermelon':
        print("Yaay!!");
        break;
    case 'lychee':
        print("Yaay!!");
        break;
    default:
        print("ewwwwww!");
}
```

:warning: In ```Dart``` missing the ```break``` statement in a non-empty case statement will generate an error.

:warning: Other valid ways to end a non-empty case clause are a continue, throw, or return statement.

:warning: If we want to fall-through a case in ```Dart```, either the case statement can be left empty or ```continue``` with a ```label``` can be used in the case statement. Below is an example -

```dart
var fruit = 'watermelon';

switch(fruit) {
    case 'watermelon':
        // fall-through this case 
    case 'lychee':
        print("Yaay!!");
        break;
    default:
        print("ewwwwww!");
}

switch(fruit) {
    case 'watermelon':
        print('Yaay!!!');
        continue goToLychee;

    goToLychee: 
    case 'lychee':
        print("Yaay!!");
        break;
    default:
        print("ewwwwww!");
}
```
:warning: A ```case``` can also have local variables which are only visible inside that particular ```case``` statement.

#### assert

An ```assert``` statement is used to disrupt the normal execution of a ```Dart``` program. 

:warning: ```assert``` have no effect on the production code, they are meant for development purposes only.  

:warning: The first argument has to be evaluated to a boolean value. The second argument is a message(String).

Here is an exmaple - 

```dart
assert(fruit.isWatermelon(), "This is not a watermelon :(");
```

:sparkles: Yay, this is the end of basics of the ```Dart``` language. Please look [here](#) to learn more. :sparkles: 
