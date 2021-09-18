import 'dart:io';

void main(List<String> arguments) {
  var ab = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();
  var product = ab[0] * ab[1];
  if (product % 2 == 0) {
    print('Even');
  } else {
    print('Odd');
  }
}
