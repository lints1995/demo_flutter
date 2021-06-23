import 'package:flutter/material.dart';
import 'package:demo_flutter/component/NoData.dart';

class PageNoData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('暂无数据'),
        ),
        body: Container(
          child: NoData(),
        ));
  }
}
