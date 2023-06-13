import 'package:flutter/material.dart';
import 'package:first/container_page.dart';
import 'package:first/c_pageview_page.dart';

class MultiMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('화면 배치를 위한 위젯'),
        ),
        body: ListView(children: <Widget>[
          ListTile(
            title: const Text('Container'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContainerPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Pageview'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageViewPage()),
              );
            },
          )
        ]));
  }
}