import 'package:flutter/material.dart';

void main() => runApp(const MyApp1());

class MyApp1 extends StatelessWidget {
  const MyApp1({ key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            '곰 이미지 출력',
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
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("원래 페이지로"),
                ),
              ),
            ],
          )
        )
      )
    );
  }
}