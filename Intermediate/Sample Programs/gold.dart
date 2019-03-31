class Gold {
  
  final int price;
  final num purity;
  final someInteger;

  const Gold(this.price) : purity = 12.32, someInteger = 20;

  @override
  String toString() => 'Price : $price.\nPurity : $purity.\nInteger : $someInteger.';
}

main(List<String> args) {
  var gold = Gold(12);
  print(gold);
}