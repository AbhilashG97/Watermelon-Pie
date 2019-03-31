abstract class Fruit {

  String _name; // instance variable

  Fruit(); // unamed-no-arg constructor

  /**
   * A factory constructor that returns a lemon  
   */
  factory Fruit.fruit() {
    return new Lemon("Sweet lime!!!");
  }

  sayFruitName();
}

class Lemon extends Fruit {
  String _name;

  Lemon(this._name);

  @override
  String toString() => _name;

  @override
  sayFruitName() => print("$_name");
}

main(List<String> args) {
  var lemon = Fruit.fruit();
  print(lemon);
}