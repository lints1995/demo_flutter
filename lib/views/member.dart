import 'package:flutter/material.dart';
import 'package:demo_flutter/component/MemberItem.dart';

class PageMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('会员列表'),
        ),
        body: ListView(
          children: [MemberItem()],
        ));
  }
}
