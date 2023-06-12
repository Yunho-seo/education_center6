import 'package:flutter/material.dart';  // widget 유형

// web(html5, JS 등) / window(winapi, dot.net) / ios / android
// Interface : app과 비슷하다.
// 프로그래밍 시 안드로이드를 기준으로 함 - dart는 google 언어
void main() {
  runApp(const MyApp());
}

// 프로그램의 시작은 widget
// statelessWidget : 단일 인터페이스 (화면이 변하지 않음)
class MyApp extends StatelessWidget {  // 객체지향 프로그래밍
  const MyApp({super.key});  // 생성자 

  // This widget is the root of your application (애플리케이션이 root)
  // widget을 이용하여 widget Tree을 만듬 (MyApp이 시작점이라는 뜻)
  @override  // 장식자 - 명시적으로 오버라이딩
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),  // 색상
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// StatefulWidget : 상태 변환이 가능한 위젯
class MyHomePage extends StatefulWidget {  // MyHomePage 타이틀
  const MyHomePage({super.key, required this.title});

  final String title;  // 내용만 변경이 가능한 final 변수

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// 여러개의 state를 만들어서 연결함
class _MyHomePageState extends State<MyHomePage> {  // 클래스 : 멤버 변수 + 멤버 함수
  int _counter = 0;  // 변수 초기화, 변수를 state라고 한다.

  void _incrementCounter() {  // 함수 : 리턴타입, 함수명, 중괄호  // 함수 내에서 setState를 호출하면 값이 변하고, 화면도 갱신됨
    setState(() {  // 함수를 작성하여 전달 (무명함수 (lambda 함수)) (값을 바꿔줌)
      _counter++;
    });  // rendering이 자동으로 실행됨 - 화면 렌더링  // setState 안에서 count 값을 증감하여야 값과 화면이 바뀜
  }

  @override
  Widget build(BuildContext context) {  // build : 화면을 생성하는 의미 - 출력을 어떻게 할것인지?
    return Scaffold(  // Scaffold : 뼈대(실제 화면 위젯) (건축물에서의 뼈대)
      appBar: AppBar(  // 타이틀을 출력
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),  // Text도 위젯
      ),
      body: Center(  // 위치 위젯
        child: Column(  // 위아래로 배치
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[  
            const Text(  // Text를 출력
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',  // Counter를 출력, Text 안에서 변수를 참조 시 $를 붙인다.
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(  // Button 위젯
        onPressed: _incrementCounter,  // Event(이벤트) response 함수
        tooltip: 'Increment',  // 툴팁 : 마우스가 버튼 위로 올라오면 나타나는 메세지
        child: const Icon(Icons.add),  // 버튼의 ICON
      ), 
    );
  }
}
