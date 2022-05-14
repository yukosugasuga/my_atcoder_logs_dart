import 'dart:convert';
import 'dart:io';
import 'dart:async';

Future<void> main(List<String> arguments) async {
  // 過去の文字列とダブっていない and maxの値 になるインデックスを控える

  var n = int.parse(stdin.readLineSync());

  var resultPoint = 0;
  var resultIndex = 0;
  var pastAnswer = {};

  // TLE
  // for (var i = 0; i < n; i++) {
  //   var st = stdin.readLineSync().split(' ').toList();
  //   var s = st[0];
  //   var t = int.parse(st[1]);
  //
  //   if(!pastAnswer.containsKey(s)) {
  //     pastAnswer[s] = t;
  //
  //     if(resultPoint < t) {
  //       resultPoint = t;
  //       resultIndex = i+1;
  //     }
  //   }
  // }

  var count = 1;
  var lines = stdin.transform(utf8.decoder).transform(LineSplitter());
  await for (var line in lines) {
    var st = line.split(' ').toList();
    var s = st[0];
    var t = int.parse(st[1]);

    if (!pastAnswer.containsKey(s)) {
      pastAnswer[s] = t;

      if (resultPoint < t) {
        resultPoint = t;
        resultIndex = count;
      }
    }

    count++;
    if(count > n) break;
  }

  print(resultIndex);
}
