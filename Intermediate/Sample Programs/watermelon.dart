class Fruit {

  String _fruitName;
  String _shape;

  Fruit() {

  }

  Fruit.moreFruits(this._fruitName, this._shape){
    print('This is a constructor');
  }

  Fruit.fruit(this._fruitName);

  Fruit.extraFruit() {
    print("This is a named constructor");
  }

  String getMelon() {
    return _fruitName;
  }

}

class Watermelon extends Fruit {
  
  String _taste;
  final int _price;
  final String availability;

  Watermelon(this._taste, this._price) : availability = 'AVAILABLE' {

  }

  Watermelon.watermelon(String fruit) {
    print('This is a $fruit.');
  }

  String getMeMelon() {
    return super.getMelon();
  }

  @override
  String toString() => 'Taste $_taste, Price $_price';

}

main(List<String> args) {

  var watermelon = Watermelon('sweet', 20);
  //var anotherWatermelon = Watermelon.watermelon('watermelon', 12); // named constructor is used.
  print(watermelon); // print the class

  watermelon = Watermelon('bitter', 200); 
  print(watermelon); // printing another class 
  
  print(watermelon.getMeMelon());
}
