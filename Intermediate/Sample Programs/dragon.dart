/**
 * This code snippet shows the usage of getters and setters.
 */

class Fruit {

  String _fruitName;
  int _price;

  Fruit(this._fruitName, this._price);
  
  // A factory method 
  factory Fruit.watermelon() => Fruit("Watermelon", 100);

  // getters and setters for _fruitName
  void set fruitName(String fruitName) => _fruitName = fruitName;
  String get fruitName => _fruitName;

  // getters and setters for _price
  set expense(int price) => _price = price;
  int get expense => _price;

  @override 
  String toString() => "$_fruitName, $_price"; 
}

main(List<String> args) {
  var fruit = Fruit.watermelon();
  print(fruit.fruitName);

  fruit.fruitName = "Lychee";
  print(fruit);

  print(fruit.expense);
  print(fruit.expense = 212);
}

