import 'dart:io';

void main(List<String> arguments) {
  var s = stdin.readLineSync();

  if (s.length == 1) {
    print(s + s + s + s + s + s);
  } else if (s.length == 2) {
    print(s + s + s);
  } else if (s.length == 3) {
    print(s + s);
  }
}
