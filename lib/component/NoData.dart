import 'package:flutter/material.dart';

class NoData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 36.5,
          ),
          Image.asset(
            "lib/images/no_data_new.png",
            width: 240,
            height: 240,
          ),
          Text('咦？没有数据呢？',
              style: TextStyle(
                  color: Color.fromARGB(255, 119, 119, 119), fontSize: 13))
        ],
      ),
    );
  }
}
