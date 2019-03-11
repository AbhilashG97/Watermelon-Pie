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

:exclamation: There are other subtypes of ```Exception``` and ```Error``` which can also be used in exception handling.

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

## Classes

> ```Dart``` is an **object-oriented language** with classes and **mixin-based inheritance**. Every object is an instance of a class, and all classes descend from Object.

> Mixin-based inheritance means that although every class (except for Object) has exactly one superclass, a class body can be reused in multiple class hierarchies.

**What is a Mixin?**

According to Wikipedia - 

>  A Mixin is a class that contains methods for use by other classes without having to be the parent class of those other classes. How those other classes gain access to the mixin's methods depends on the language.

>  A mixin can also be viewed as an interface with implemented methods.

Here is an simple example of a class in ```Dart``` - 

```dart
class Fruit {

    String _fruitName;
    int _price;

    Fruit(this._fruitNamem, this._price);

    Fruit.fruit() {
        _fruitName = 'watermelon';
        _price = 25;
    }

    @override   
    String toString() => 'Fruit name : $_fruitName\nPrice: $_price';
}   
```

:warning: Named constructors can be used to add more constructors to a class in ```Dart```.

To add a **named constructor** in ```Dart``` the following syntax is to be used - 

```dart
ClassName.constructorName(Argument argument) {

}
```

:warning: The ```new``` keyword is now optional in ```Dart```, it can be omitted.  

### Constructors

:warning: A constructor is not inherited.

Constructors in ```Dart``` are created in the same way as that in ```Java```. The most common form of the constructor is the default constructor which is also known by the name of the ```generative constructor```. 

Constructors have the same name as that of the class. 

```Dart``` has introduced a shortcut to create constructors. 

Here is an example -

```dart
class Fruit {
    
    String _fruitName;
    int _price;

    Fruit(this._fruitName, this._price);
}
```

:warning: ```Dart``` has two types of constructors - ```named``` and ```unnamed``` constructors. 

Here is an example of a named and unnamed constructors - 

```dart
class Fruit {

    Fruit() {
        // unnamed constructor
    }

    Fruit.fruit() {
        // named constructor
    }
}
```

:warning: A default constructor(no argument, no name) is provided to the user if no constructor is declared. 

:warning: Subclasses don't inherit constructors from their superclass. 

:exclamation: A subclass that declares no constructors has only the default (no argument, no name) constructor.

#### Named constructors

**Named constructors** are used to create multiple constructors in ```Dart```. 

Here is an example - 

```dart
class Fruit {

    String _fruitName;
    int _price;

    Fruit(this._fruitName, this._price);

    Fruit.fruit() {
        print('This is a named constructor.')
    }
}
```

:warning: A named constructor is not inherited. If we want to call the constructor of the parent class we have to explicitly call the named constructor in the constructor of the subclass.

:warnings: **The subclass by default calls the no-arg constructor of the super-class**. If the super class has no unnamed, no-argument constructor then one of the constructors of the super class must be called. 

The order in which the all the calls are made are given below - 

1. **initializer list**
1. **superclass's no-arg constructor**
1. **main class's no-arg constructor**

Here is an example which shows how a constructor of the super class is called in the constructor of the sub-class - 

```dart
class Fruit {

    Fruit.fruit(String fruitName) {
        print('This is the super-class and this is a $fruitName.');
    }
}

class Watermelon extends Fruit {

    Watermelon.watermelon(String someFruit) : super.fruit(someFruit) {
        print('This is the sub-class');
    }
}
```

:warning: The superclass constructor is called after the ```colon(:)``` symbol. 

:warning: If you create a named constructor along with an unamed-no-arg constructor in the super-class, then you don't have to explicitly call the constructors of the super class. The unnamed-no-arg constructor is called by default in the sub-class. 

On the other hand if the unnamed constructor has arguments it will be have to called explictly. Named constructors can also be called in its place.  

##### Initializer List 

The ```initializer list``` is used to instantiate variables before the constructor uses them. 

Here is an example - 

```dart
class Fruit {
    String _fruitName;
    int _price;

    Fruit() : _fruitName = 'watermelon', _price = 200 {
        print('This is a default constructor.');
        print('Fruit name : $_fruitName.\nPrice : $_price');
    }
}
```

:warning: ```final``` members cannot be initialized inside the constructor body in ```Dart```. They can be initialized in the initializer list or in the arguments. 

Here is an example - 

```dart
class Watermelon {
    
    final String _taste;
    final int _price;

    Watermelon(this._taste) : _price = 2; 
}
```

:warning: ```final``` members have to be initialized in all the constructors in ```Dart``` or an error is thrown during compilation.

##### Redirecting Constructors

A ```Redirecting constructor``` redirects a constructor to another constructor. The body of the redirecting constructor is empty. 

Here is an example of a redirecting constructor -

```dart
class Watermelon {

    String _taste;  
    String _shape;

    Watermelon(this._taste, this._shape);

    Watermelon.watermelon(String taste, String shape) : this(taste, shape);
}
```

:warning: The constructor to which the ```Redirecting Constructor``` points is specified after the ```colon(:)```.

##### Constant Constructors

In certain cases when a class produces a constant object, a constant constructor can be used. A constant constructor is created by prefixing a constructor with the ```constant``` keyword.

Here is an example -

```dart
class Watermelon {

    final String _genus;

    const Watermelon.genus(this._genus);
}
```

:warning: The instance variables on which the constructors will be used must be ```final```.

:exclamation: Constant constructors don’t always create constants. Please use ```const``` keyword while creating objects to create actual compile-time constants. If the ```new``` keyword is used instead of the ```const``` keyword, then a regular object will be created.  

:warning: Any generative constructor can also initialize final variables. 

:warning: A constant constructor cannot have a body. If a method body is specified then a compile-time error will be thrown.

:warning: When a constant constructor is used, all the fields in the class have to be ```final```. If non-final fields are used they'll throw an error.

:exclamation: Below mentioned are a few really important points -

> The point of const constructors is not to initialize final fields. The point is to create compile-time constant values: Objects where the all field values are known already at compile time, without executing any statements.

> The initializer list must also only initialze fields to other compile-time constants.

>  A const constructor can also be used as a normal constructor to create objects at runtime, as well as creating compile-time constant objects at compilation time.

##### Factory constructors

The factory constructor allows the user to create instances of a class form the constructor. The constructor can be used like a factory method.

:warning: Usually the factory constructor is kept public and the rest of the constructors are kept private.

Here is an example - 

```dart

class Watermelon {

    String _shape;
    int _price;

    factory Watermelon(String type) {
        if(type.toLowerCase() == 'big') {
            return Watermelon._getInstance('big', 10000);
        } else {
            return Watermelon._getInstance('small', 5000);
        }
    }

    Watermelon._getInstance(this._shape, this._price);
}
```

:warning: A factory constructor can be invoked just like any other constructor.

### Instance variable

Instance variables in ```Dart``` are quite similar to that of ```Java```, however they do have a few subtle differences.

:warning: All uninitialized variables have the value ```null```.

:warning: All variables generate an implicit getter method. 

:warning: All non-final variables generate an implicit setter method.

:exclamation:

> If you initialize an instance variable where it is declared (instead of in a constructor or method), the value is set when the instance is created, which is before the constructor and its initializer list execute.

### Methods 

