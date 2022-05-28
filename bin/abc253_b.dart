import 'dart:io';

void main(List<String> arguments) {
  var hw = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();

  var firstX;
  var firstY;
  var secondX;
  var secondY;

  for (var i = 0; i < hw[0]; i++) {
    var s = stdin.readLineSync();
    if (s.contains('o')) {
      if (firstX == null) {
        firstX = s.indexOf('o');
        firstY = i;

        if (s.substring(firstX + 1).contains('o')) {
          secondX = s.substring(firstX + 1).indexOf('o') + firstX + 1;
          secondY = i;
          break;
        }
      } else {
        secondX = s.indexOf('o');
        secondY = i;
        break;
      }
    }
  }

  var distance = (secondX - firstX).abs() + (secondY - firstY).abs();
  print(distance);
}
