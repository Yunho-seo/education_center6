import 'package:flutter/material.dart';

// 원래 JAVA는, 하나의 파일에 하나의 클래스만 가능한다.
// Dart는 하나의 파일에 여러개의 클래스 정의가 가능하다.
// class 구조 : javascript처럼 JSON 형태를 띰 - {키, 데이터} 형식의 속성
// 문장의 종료점은 ; (python은 선택)
void main() {
  // C 언어의 영향, 문법
  runApp(const MaterialApp(
    home: HomeRoute(),  // 클래스 속성
  ));
}

// 앞단
class HomeRoute extends StatelessWidget {  // JAVA 문법
  const HomeRoute({Key? key}) : super(key: key);  // 생성자 / ? 변수가 null일 수 있음
  @override
  Widget build(BuildContext context) {  // Widget을 리턴 // BuildContext 창을 빌드
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geeks for Geeks'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Click Me!'),
          onPressed: () {  // 이벤트 함수
            Navigator.push(  // stack : page를 담는 구조
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),  // 클래스 인스턴스
            );
          }),
      ),
    );
  }
}

// 뒷단
class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Click Me Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Home!"),
        ),
      ),
    );
  }
}
