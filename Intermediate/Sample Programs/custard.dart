class Melon {

  String _specie;
  num _weight;

  Melon(this._specie, this._weight);

  void saySpecieName() {
    if(_specie != null || _specie == "") {
      print(_specie);
    } else {
      print("Genus Cucurbitaceae");
    }
  }

  void displayWeight() {
    print("Weight : $_weight");
  } 

  @override 
  String toString() => "Specie : _speice \nWeight: $_weight";
}

class Watermelon implements Melon {

  String _specie;
  num _weight;

  @override
  void saySpecieName() {
    print("	C. lanatus");
  }

  @override
  void displayWeight() {
    print("100 KG");
  }
}

main(List<String> args) {
  var melon = Melon("", 1212);
  melon.saySpecieName();

  var watermelon = Watermelon();
  watermelon.saySpecieName();
}