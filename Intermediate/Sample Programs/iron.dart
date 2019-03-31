abstract class Metal {
  
  String _weight;
  int _price;

  int get price;
}

class Iron extends Metal {
  
  @override
  int get price => 12;
}

main(List<String> args) {
  var iron = Iron();
  print(iron.get);
}