import 'package:flutter/material.dart';
import 'package:first/s6_listview_detail.dart';
import 'package:first/image.dart';
import 'package:first/detailscrolling.dart';
import 'package:first/detailtabview.dart';
import 'package:first/sungjuk.dart';
import 'package:first/menu.dart';

void main() {
  runApp(const MakeRouteApp());
}

class MakeRouteApp extends StatelessWidget {
  const MakeRouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first': (context) => const FirstPage(),
        '/second': (context) => const SecondStatefulPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyApp(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}

class SecondStatefulPage extends StatefulWidget {
  const SecondStatefulPage({super.key});
  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
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

            // s6_listview_detail.dart
            ElevatedButton(
              child: const Text('리스트뷰'),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListViewTest2()
                    )
                  );
                debugPrint('data: $result');  // 결과값을 확인하는 용도의 debugprint()
              }
            ),

            // detailview.dart
            ElevatedButton(
              child: const Text('이미지'),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyApp1()
                    )
                  );
                debugPrint('data: $result');  // 결과값을 확인하는 용도의 debugprint()
              }
            ),

            ElevatedButton(
              child: const Text('스크롤바'),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyScrollableWidget()
                    )
                  );
                debugPrint('data: $result');
              }
            ),
            ElevatedButton(
              child: const Text('탭뷰'),
              onPressed: () async { 
              final result = await Navigator.push( 
                context, 
                MaterialPageRoute(
                  builder: (context) => const TabPage()));
              debugPrint('data: $result');
              }
            ),

            ElevatedButton(
              child: const Text('다양한 widget'),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MenuPage()
                    )
                  );
                debugPrint('data: $result');
              }
            ),

            ElevatedButton(
              child: const Text('성적 입출력'),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sungjuk()
                    )
                  );
                debugPrint('data: $result');
              }
            ),
          ]
        )
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.orangeAccent,
        child: SizedBox(
          height: 100.0,
          child: Row(
            children: <Widget>[
              const Text("미래융합교육원  "),
              const Text("대전시청 119"),
              const Icon(Icons.home),
              IconButton(
                icon: const Icon(Icons.add_box),
                onPressed: () {
                  debugPrint("테스트입니다.");
                },
              )
            ]),
        )
      ),
      persistentFooterButtons: const <Widget>[
        IconButton(
          icon: Icon(Icons.account_box),
          onPressed: null,  // null로 정의하여, 비활성화됨
        ),
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: null,
        ),
      ]
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

// 과제 (예시 : 이름, 국어, 수학, 영어 점수 입력하고 이름 누르면 점수 출력되게끔)
// 입력버튼, 타이틀이 출력되는 리스트 타이틀 출력화면을 클릭하면 상세뷰로 연결되는,
// 리스트 타이틀과 입력 페이지에서 내용을 입력하도록 하는 부분과
// 타이틀을 누르면 상세뷰가 나오도록 작성