class Round {

  String _fruitName;
  static const int _price = 200;

  Round() : _fruitName = 'watermelon'  {
    print('Fruit name : $_fruitName.\nPrice : $_price');
  }

}

class Circle extends Round {
  
}

main(List<String> args) {
  Round round = Round();
}