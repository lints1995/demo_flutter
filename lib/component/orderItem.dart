import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  OrderItem(
      {this.orderNo = "-",
      this.status = "-",
      this.address = "-",
      this.phone = "-",
      this.time = "-"});

  final String orderNo;
  final Object status;
  final String address;
  final Object phone;
  final Object time;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        padding: EdgeInsets.fromLTRB(12, 15, 12, 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            color: Colors.white),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('订单号：$orderNo',
                  style: TextStyle(
                    color: Color.fromARGB(255, 51, 51, 51),
                    fontSize: 16,
                    fontFamily: 'PingFang SC',
                  )),
              Text(
                status,
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 58, 48),
                    fontFamily: 'PingFang SC',
                    fontSize: 14,
                    fontWeight: FontWeight.w200),
              )
            ],
          ),
          SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                child: Image.asset(
                  'lib/images/member_site.png',
                  width: 20,
                ),
              ),
              Expanded(
                  child: Text(
                address,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'PingFang SC',
                    color: Color.fromARGB(255, 85, 85, 85)),
              ))
            ],
          ),
          SizedBox(height: 16),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
                flex: 1,
                child: Row(children: [
                  Image.asset(
                    'lib/images/icon_phone.png',
                    width: 20,
                  ),
                  Text(
                    phone,
                    style: TextStyle(
                        fontFamily: 'PingFang SC',
                        fontSize: 16,
                        color: Color.fromARGB(255, 85, 85, 85),
                        fontWeight: FontWeight.w300),
                  ),
                ])),
            Expanded(
                child: Text(
              '创建时间：$time',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Color.fromARGB(255, 153, 153, 153),
                fontFamily: 'PingFang SC',
                fontSize: 14,
              ),
            ))
          ])
        ]));
  }
}
