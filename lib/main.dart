import 'package:flutter/material.dart';
import 'package:demo_flutter/component/CustomButton.dart';
// 页面
import 'views/base.dart';
import 'views/routerQuery.dart';
import 'views/image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Demo'),
      routes: {
        '/base': (context) => PageBase(),
        '/routerQuery': (context) => PageRouterQuery(),
        '/image': (context) => PageImage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List buttonGroup = [
      {
        'text': '基本修饰',
        'path': '/base',
      },
      {
        'text': '路由传参',
        'path': '/routerQuery',
        'arguments': {"name": '我是传递的参数'},
      },
      {'text': '加载图片', 'path': '/image'}
    ];
    List<Widget> buttonWidgetList = []; //先建一个数组用于存放循环生成的widget
    for (var item in buttonGroup) {
      buttonWidgetList.add(
        CustomButton(
            text: item['text'],
            path: item['path'],
            arguments: item['arguments']),
      );
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Wrap(
          spacing: 10,
          children: buttonWidgetList,
        ));
  }
}
