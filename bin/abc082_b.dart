import 'dart:io';

void main(List<String> args) {
  var s = stdin.readLineSync().split('').toList();
  var t = stdin.readLineSync().split('').toList();
  s.sort();
  t.sort();
  var sDash = s.join();
  var tDash = t.reversed.join();
  if (sDash.compareTo(tDash) < 0) {
    print('Yes');
  } else {
    print('No');
  }
}
