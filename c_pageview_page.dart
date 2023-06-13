import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView'),
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
        ]
      )
    );
  }
}