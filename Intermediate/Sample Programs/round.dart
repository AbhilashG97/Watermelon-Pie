class Round {

  String _fruitName;
  static const int _price = 200;

  Round() {
    print('Round!!');
  }

  Round.round() : _fruitName = 'watermelon'  {
    print('Fruit name : $_fruitName.\nPrice : $_price');
  }

  Round.oval() {
    print('This is named constructor.');
  }

}

class Circle extends Round {
  
  Circle() {
    print('Circle!!!');
  }

}

main(List<String> args) {
  Round round = Round();
}