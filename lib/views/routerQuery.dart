import 'package:flutter/material.dart';

// 路由传参
class PageRouterQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text('路由传参')),
      body: Center(child: Text(args['name'])),
    );
  }
}
