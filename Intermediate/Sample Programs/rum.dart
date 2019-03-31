class Rum {

  String _name;

  factory Rum(int cost) {
    switch(cost) {
      case 100:
        return Rum._produceRum('Expensive');
        break;
      case 200:
        return Rum._produceRum('Really really expensive.');
        break;
      default:
        return Rum._produceRum('okayish rum.');     
    }
  }

  Rum._produceRum(this._name);

  @override
  String toString() => 'This rum is : $_name.';

}

main(List<String> args) {
  Rum rum = Rum(300);
  print(rum);
}