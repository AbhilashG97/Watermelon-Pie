class Watermelon {

  final String _genus;
  
  const Watermelon(this._genus);

  @override
  String toString() => _genus; 

}

main(List<String> args) {

  const fruit = 1212;
  print(Watermelon('Citrullus'));
}