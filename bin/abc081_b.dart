import 'dart:io';

void main(List<String> args) {
  /*var n = */stdin.readLineSync();
  var a = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();

  var result = 0;

  while (true) {
    var existOdd = false;
    for (var ai in a) {
      // 0・奇数が無いかチェック
      if (ai == 0 || ai % 2 != 0) {
        existOdd = true;
      }
    }

    if (existOdd) {
      break;
    }

    for (var i = 0; i < a.length; i++) {
      a[i] ~/= 2;
    }

    result++;
  }

  print(result);
}
