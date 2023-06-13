import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                debugPrint("tab test");
              },
              icon: Image.asset('assets/airplane.gif'),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.greenAccent,
              image: const DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.fitWidth)),
            tabs: const <Widget>[
              Tab(text: '메뉴2'),
              Tab(icon: Icon(Icons.info), text: '메뉴3'),
                ],  
              ),
            ),
            body: TabBarView(children: <Widget>[
              Container(
                color: Colors.orange,
                // child: const WebViewLoad(),
              ),
              Container(
                color: Colors.red,
            )
          ]
        ),
      ),
    );
  }
}