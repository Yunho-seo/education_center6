import 'package:flutter/material.dart';
// import 'package:first/main.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {  // 처음에는 build가 있어야 함
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SFWdemo(),
    );
  }
}

class SFWdemo extends StatefulWidget {
  const SFWdemo() : super();
  @override
  SFWdemoState createState() => SFWdemoState();
}

// 사용자가 만든 클래스
class SFWdemoState extends State<SFWdemo> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {  // 화면 구성
    print("** build = StatefulWidget Demo");  // 디버깅 시 사용 (출력이 DEBUG CONSOLE에 나타남)
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "$_count",
              style: TextStyle(fontSize: 30),
            ),
            Row(  // 행 구조
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: null,
                  child: Icon(Icons.add),
                  onPressed: () {
                    setState(() { // 실제 값을 바꾸는 함수, 필드인
                      _count++;
                    });
                    print("value of _count = $_count");
                  },
                ),
                FloatingActionButton(
                  heroTag: null,
                  child: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      _count--;
                    });
                    print("value of _count = $_count");
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}