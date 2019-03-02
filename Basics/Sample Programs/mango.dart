/**
 * This code snippet is contains examples on control flow statements present in Dart.  
 */

/**
 * A sample method that demonstrates the use of if-else statement
 * in Dart 
 */
bool isWatermelon(String fruit) {
  if(fruit.toLowerCase() == 'watermelon') {
    return true;
  } else if (fruit.toLowerCase() == 'melon'){
    return true;
  } else {
    return false;
  }
}

/**
 * A simple method that demostrates the use of a for-loop
 */
void displayFruits(List<String> fruits) {
  // simple for loop
  for(var i=0; i<fruits.length; i++) {
    print("This is an awesome ${fruits[i]}");
  }

  // for-Each loop
  fruits.forEach((fruit) => print("This is an awesome $fruit."));

  // for-in loop 
  for(fruit in fruits) {
    print("This is an awesome $fruit.");
  }
}

/**
 * while and do-while loop example
 */
void displayMoreAweosmeFruits(List<String> fruits) {
  while(fruits.length--> 0) {
    print(fruits);
  }

  do {
    print(fruits);
   } while (fruits.length-->0);
}

/**
 * break and continue example
 */
void doSomething() {
  for(int i=0; i<100; i++) {
    if(i < 20) {
      // continue skip this iteration
      continue;
    } else if (i > 20 && i< 40) {
      print("watermelon $i");;
    }
  }
}

/**
 * switch case example
 */
void giveWatermelon(List<String> fruits) {
  for(fruit in fruits) {
    switch(fruit.toLowerCase) {
      case 'watermelon':
        print('Yay! This is a $fruit.');
        break;
      goToMango:
      case 'mango':
        print('Yay! This is a $fruit.');
        break;

      case 'apple':
        print('Yay! This is a $fruit.');
        break;

      case 'lemon':
        // fall-thorugh
        print('This is like a fruit.');
        continue goToMango;

      case 'pineapple':
        // fall-through

      default:
        print('Meow!');
    }
  }
}

/**
 * a simple example for assert 
 */
void assertFruit(List<String> fruits) {
  for(fruit in fruits) {
    assert(fruit.toLowerCase() != 'watermelon', 'This is not a watermelon :(');
  }
}

/**
 * main method
 */
main(List<String> args) {
  var fruits = ['watermelon', 'orange', 'lemon', 'apple']; 
}