import 'dart:io';

void main(List<String> args) {
  var s = stdin.readLineSync().split('').toList();

  var cost = 700;
  for (var si in s) {
    if (si == 'o') {
      cost += 100;
    } else {}
  }
  print(cost);
}
