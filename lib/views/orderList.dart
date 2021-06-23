import 'package:flutter/material.dart';
import 'package:demo_flutter/component/orderItem.dart';

class PageOrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('订单列表'),
        ),
        body: Container(
          child: OrderItem(
              orderNo: '1928364734344344',
              status: '已完成',
              address: '成都市成华区湖景五路与湖秀二路交叉口南100米北湖国际城2期·澜悦18栋408',
              phone: '138****5375',
              time: '2020-03-31'),
        ));
  }
}
