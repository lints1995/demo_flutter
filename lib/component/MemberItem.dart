import 'package:flutter/material.dart';

class MemberItem extends StatelessWidget {
  MemberItem(
      {this.portrait =
          'https://img.mukewang.com/szimg/5fce065b098c7efc05400304.jpg',
      this.userName = "这是一个名字",
      this.phone = "138****5375"});

  final String portrait;
  final String userName;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 64,
        padding: EdgeInsets.fromLTRB(10.5, 8, 10.5, 8),
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage(portrait))))
              ],
            ),
            Column(children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
                child: Text(
                  userName,
                  style: TextStyle(
                      color: Color.fromARGB(255, 51, 51, 51), fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(children: [
                  Image.network(
                    'https://img.mukewang.com/szimg/5fce065b098c7efc05400304.jpg',
                    width: 11.5,
                    height: 11.5,
                  ),
                  SizedBox(
                    width: 6.23,
                  ),
                  Text(phone),
                ]),
              )
            ])
          ],
        ));
  }
}
