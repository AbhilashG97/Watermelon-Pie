/**
 * This file contain a custom exception class
 * which will be used in differnet sample programs
 */

class FruitException implements Exception {
  String cause;
  FruitException(this.cause);
}

void _sayWatermelon() {
  print("This is a watermelon");
}

void _throwException() {
  throw FruitException("No fruitts found!!!");
}

main(List<String> args) {
  try {
    _throwException();
  } on FruitException {
    _sayWatermelon();
  }

  print("Watermelons are awesome!!!");
}