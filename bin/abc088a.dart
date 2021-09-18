import 'dart:io';

void main(List<String> arguments) {
  var n = int.parse(stdin.readLineSync());
  var a = int.parse(stdin.readLineSync());

  if (n % 500 <= a) {
    print('Yes');
  } else {
    print('No');
  }
}
