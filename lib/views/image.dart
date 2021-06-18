import 'package:flutter/material.dart';

class PageImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('图片')),
        body: Container(
          width: 400,
          height: 200,
          padding: const EdgeInsets.all(10),
          color: Colors.blue,
          child: new Image.network(
            'https://img.mukewang.com/szimg/5fce065b098c7efc05400304.jpg', // 加载一张网络图片
            scale: 3, // 设置图片缩放比列，值越大图片越小，和fit一起使用不生效,默认：1
            // fit: BoxFit.cover, // 设置图片平铺满父组件的方式
            // repeat: ImageRepeat.repeatX, // 设置图片x轴重叠，铺满父组件
          ),
        ));
  }
}
