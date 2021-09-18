import 'dart:io';

void main(List<String> args) {
  var s = stdin.readLineSync();
  var cnt = s.length - 2;
  print('${s[0]}$cnt${s[s.length - 1]}');
}
