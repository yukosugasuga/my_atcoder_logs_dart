import 'dart:io';

void main(List<String> arguments) {
  final n = int.parse(stdin.readLineSync());

  var result = <List<int>>[];
  var resultTxt = '';

  for (var i = 0; i < n; i++) {
    var tempList = <int>[];
    for (var j = 0; j <= i; j++) {
      if (j == 0 || j == i) {
        tempList.add(1);
      } else {
        tempList.add(result[i-1][j-1] + result[i-1][j]);
      }
    }
    result.add(tempList);
  }

  for (var i = 0; i < n; i++) {
    for (var j = 0; j <= i; j++) {
      resultTxt += result[i][j].toString() + ' ';
    }
    resultTxt += '\n';
  }
  print(resultTxt);
}
