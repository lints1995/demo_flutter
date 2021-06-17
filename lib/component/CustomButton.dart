import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.text = '按钮', this.path, this.arguments});
  
  final String text;
  final String path;
  final Object arguments;

  @override
  Widget build(BuildContext context) {
    return (OutlinedButton(
      child: Text(text),
      onPressed: () {
        Navigator.of(context).pushNamed(path, arguments: arguments);
      },
    ));
  }
}
