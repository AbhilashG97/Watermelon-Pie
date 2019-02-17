// A simple dart program
class Watermelon {
  String _shape;
  int _price;

  Watermelon(this._shape, this._price) {

  }

  int getPrice() {
    return _price;
  }

  String getShape() {
    return _shape;
  }

  @override
  String toString() => 'Shape: $_shape, Price : \$$_price';

}

main(List<String> args) {
  var myTastyWatermelon = Watermelon("Round", 0);
  print(myTastyWatermelon);
}