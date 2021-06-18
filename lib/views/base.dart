import 'package:flutter/material.dart';

class PageBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('基本修饰')),
        body: Column(children: [
          Container(
              width: 200,
              height: 100,
              // alignment: Alignment.center,
              // color: Colors.blue,
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.green, Colors.grey])),
              child: Text(
                '你好',
                textAlign: TextAlign.center,
              ))
        ]));
  }
}
