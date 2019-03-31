class Car {
  int _horsePower;
  String _carType;

  Car();

  Car.car(this._horsePower, this._carType);
  
  void displayAwesomeCar(){
    print("Awesome car!!");
  }
}

class BMWM8 extends Car {
  @override
  void displayAwesomeCar() {
    print("BMW is awesome!!");
    super.displayAwesomeCar();
  }
}

main(List<String> args) {
  BMWM8().displayAwesomeCar();
}