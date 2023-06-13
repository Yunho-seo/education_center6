import 'package:flutter/material.dart';
import 'package:first/MultiMenu.dart';

// MaterialApp으로 리턴하게 되면(넘어가면), 되돌아올 수 없음
// MaterialApp으로 점프하는 것은 가능

// class MenuApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return MaterialApp(
//     return Scaffold(
//       routes: const {
//         // '/first': (context) => FirstPage(),
//         // '/second': (context) => SecondStatefulPage(),
//       },
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MenuPage(),
//     );
//   }
// }

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('플러터 위젯'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('상위 화면으로'),
            onTap: () {
              Navigator.maybePop(context);
            }
          ),
          ListTile(
            title: const Text('화면 배치위젯'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MultiMenu(),
                )
              );
            }
          )
        ]
      )
    );
  }
}