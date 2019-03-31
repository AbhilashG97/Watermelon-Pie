var _awesomeFruit = StringBuffer("Watermelons are awesome!");

main(List<String> args) {
  for(var i=0; i<5; i++) {
    _awesomeFruit.write('!');
    print(_awesomeFruit);
  }

  var someFruit = 'watermelon';

  switch (someFruit) {
    case 'watermelon':
      print("yay!!");
      continue goToBanana;
    
    goToBanana:
    case 'banana':
      print('yeeeee haww!');
      break;
    default:
      print("yum yum!!");
  }

}