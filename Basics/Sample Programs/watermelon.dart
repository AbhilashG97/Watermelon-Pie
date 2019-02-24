// A simple dart program

/**
 * A simple class in Dart
 */
class Watermelon {
  String _shape;
  int _price;

  Watermelon(this._shape, this._price);

  // getters and setters
  
  int getPrice() {
    return _price;
  }

  String getShape() => _shape;

  @override
  String toString() => 'Shape: $_shape, Price : \$$_price';

}

/**
 * A top-level main method
 */
main(List<String> args) {
  var myTastyWatermelon = Watermelon("Round", 0);
  print(myTastyWatermelon);
}