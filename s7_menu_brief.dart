import 'package:flutter/material.dart';

void main() {
   runApp(const MaterialApp(
   home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('메뉴'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 4.0, 
          mainAxisSpacing: 1.0,
          children: <Widget>[
            ElevatedButton(
              child: const Text('비동기통신:이름'),
              onPressed: () async {
                // 비동기 통신
                final person = Person('홍길동', 40);
                final result = await Navigator.push(
                  // Stack 복귀 주소를 저장 라우트에 지정된 주소로 함
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(person: person)));
                debugPrint('data: $result');  // 결과값을 확인하는 용도의 debugprint()
              }
            ),
          ]
        )
      )
    );
  }
}

class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

class SecondPage extends StatelessWidget {
  final Person person;
  const SecondPage({Key? key, required this.person}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    debugPrint('SecondPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text(person.name),
      ),
      body: ElevatedButton(
        child: const Text('이전 페이지로'),
        onPressed: () {
          Navigator.pop(context, 'ok');
        },
      ),
    );
  }
}

