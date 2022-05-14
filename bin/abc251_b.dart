import 'dart:io';

void main(List<String> arguments) {
  // n個のおもり、w以下の整数のうち「良い整数」は何個？
  var nw = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();
  var w = nw[1];

  // おもりiのおもさはai
  var aList = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();

  // 「良い整数」・・・ 3 個以下 の異なるおもりを自由に選んで、選んだおもりの重さの和を n にすることができる。
  // -> W 以下の正整数のうち、良い整数は何個？

  var cntMap = {};
  for (var i = 0; i < aList.length; i++) {
    if (aList[i] <= w) {
      cntMap[aList[i]] = 1;
    }

    for (var j = i + 1; j < aList.length; j++) {
      if (aList[j] <= w) {
        cntMap[aList[j]] = 1;
      }
      if (aList[i] + aList[j] <= w) {
        cntMap[aList[i] + aList[j]] = 1;
      }

      for (var k = j + 1; k < aList.length; k++) {
        if (aList[k] <= w) {
          cntMap[aList[j]] = 1;
        }
        if (aList[k] + aList[i] <= w) {
          cntMap[aList[k] + aList[i]] = 1;
        }
        if (aList[k] + aList[j] <= w) {
          cntMap[aList[k] + aList[j]] = 1;
        }
        if (aList[i] + aList[j] + aList[k] <= w) {
          cntMap[aList[i] + aList[j] + aList[k]] = 1;
        }
      }
    }
  }

  print(cntMap.length);
}
