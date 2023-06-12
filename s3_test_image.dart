import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            '곰 출력',
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/gom.jpg',
                height: 200,
                scale: 2.5,
                opacity: const AlwaysStoppedAnimation<double>(0.5)), // 투명도에 대한 Animation
              Image.asset(
                'assets/gom.jpg',
                height: 400,
                width: 400,
              ),
            ],
          )
        )
      )
    );
  }
}