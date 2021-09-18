import 'dart:io';

void main(List<String> arguments) {
  var n = int.parse(stdin.readLineSync());

  if (n % 2 == 0) {
    print(n ~/ 2);
  } else {
    print(n ~/ 2 + 1);
  }
}
