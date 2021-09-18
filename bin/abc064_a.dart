import 'dart:io';

void main(List<String> arguments) {
  var rgb = stdin.readLineSync().replaceAll(' ', '');
  var intRgb = int.parse(rgb);
  if (intRgb % 4 == 0) {
    print('YES');
  } else {
    print('NO');
  }
}