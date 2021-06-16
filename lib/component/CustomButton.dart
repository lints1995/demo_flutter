import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.text = '按钮', this.onPressed});
  final GestureTapCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return (OutlinedButton(child: Text(text), onPressed: onPressed));
  }
}
