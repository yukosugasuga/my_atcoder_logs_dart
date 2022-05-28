import 'dart:io';

void main(List<String> arguments) {
  var abc = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();

  var abcClone = [...abc];
  abcClone.sort();

  if (abc[1] == abcClone[1]) {
    print('Yes');
  } else {
    print('No');
  }
}
