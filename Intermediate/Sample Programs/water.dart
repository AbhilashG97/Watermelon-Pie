class Fruit {
  void sayFruitName() {
    print("Fruit");
  }
}

mixin Pineapple {
  void sayPineapple();
}

class Watermelon with Fruit, Pineapple {

  @override
  void sayPineapple() {
    print("Pineapple !!!");
  }
}

main(List<String> args) {
  var watermelon = Watermelon();
}