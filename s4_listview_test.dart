import 'package:flutter/material.dart';
void main() => runApp(MyApp());

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  // List 자료구조 객체 -> Template으로 만들어져 있음
  // C++, JAVA에서도 같은 방식, <String> 캐스팅(casting)
  final List<String> names = <String>['대한이', '민국이', '만세이', '고구려', '성공해', '편안히'];
  final List<int> msgCount = <int>[2, 0, 10, 6, 52, 4];
  // 데이터 입출력할때, 해당 위젯의 Controller를 만들어서 연결해주어야 한다.
  TextEditingController nameController = TextEditingController();
  // 멤버 함수 addItemToList()
  void addItemToList() {
    setState(() {  // 화면을 갱신 
      names.insert(0, nameController.text);  // 입력 데이터, text로 참조하여 insert
      msgCount.insert(0, 0);
    });
  }

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
    home : Scaffold(
      appBar: AppBar(  // 상단
        title: const Text('리스트뷰'),
      ),
      body: Directionality(
        textDirection: TextDirection.ltr,
      
        child: Column(children: <Widget>[  // Column : 열로 배치
          Padding(
            padding: const EdgeInsets.all(20),  // 주변을 20개의 공백으로 채우기
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Contact Name',
              ),
            ),
          ),
          ElevatedButton(  // 입체감이 있는 버튼
            child: const Text('Add'),  // 버튼 내에 텍스트 채우기
            onPressed: () {  // 클릭 이벤트
              addItemToList();  // 클릭 시 addItemToList() 함수 수행 (insert)
            },
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: names.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 50,
                  // margin: const EdgeInsets.all(2),
                  // color: msgCount[index] >= 10
                  //   ? Colors.blue[400]
                  //   : msgCount[index] > 3
                  //     ? Colors.blue[100]
                  //     : Colors.grey,
                  child: Center(
                      child: Text(
                    '${names[index]} (${msgCount[index]})',
                    style: const TextStyle(fontSize: 18),
                    )),
                );
              }))
        ]))),
      );
  }
}