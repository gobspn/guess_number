
import 'dart:io';
import 'dart:math';

void main() {
  var i = 0;
  var x = 100;
  var r = Random();
  var answer = r.nextInt(x);
  var total = 0;

  while (true) {
    stdout.write('Guess the number between 1 and $x: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess == null) {
      continue;
    }

    if (guess == answer) {
      total++;
      print("➜ $guess is CORRECT ♥, total guesses: $total");
      print('---------------------------------------------------------');
      break;
    } else if (guess < answer) {
      total++;
      print("➜ $guess is TOO LOW! ▼");
      print('---------------------------------------------------------');
    } else if (guess > answer) {
      total++;
      print("➜ $guess is TOO HIGH! ▲");
      print('---------------------------------------------------------');
    }
  }
}