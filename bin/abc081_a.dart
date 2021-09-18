import 'dart:io';

void main(List<String> args) {
  var s = stdin.readLineSync().split('').toList();
  var cnt = 0;
  for (var si in s) {
    if (si == '1') {
      cnt++;
    }
  }
  print(cnt);
}
