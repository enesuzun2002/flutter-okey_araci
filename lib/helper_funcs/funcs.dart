import 'dart:math';

class Functions {
  int rollDice() {
    Random random = new Random();
    int rNum = random.nextInt(6);
    if (rNum == 0) {
      return rollDice();
    } else {
      return rNum;
    }
  }
}
