import 'package:flutter/material.dart';
import 'package:first/detailview.dart';
import 'package:first/image.dart';


void main() {
  // C 언어의 영향, 문법
  runApp(const MaterialApp(
    home: ListViewTest2(),  // 클래스 속성
  ));
}

class ListViewTest2 extends StatefulWidget {
  const ListViewTest2({super.key});
  @override
  _State createState() => _State();
}

class _State extends State<ListViewTest2> {
  final List<String> names = <String>['대한이', '민국이', '만세이'];
  final List<int> msgCount = <int>[2, 0, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('리스트뷰 데이터 출력'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: ListView.builder(  // Listview는, ListTile로 구성되어 있다.
            padding: const EdgeInsets.all(8),
            itemCount: names.length,  // 생성 개수
            // 생성 개수만큼 반복하면서, ListTile을 생성한다.
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: const Icon(Icons.add),
                title: Text('${names[index]} (${msgCount[index]})'),
                trailing: Text('${msgCount[index]}'),
                onTap: () {
                  var list1 = ListDetail(names[index], msgCount[index]);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                        ListDetailView(listDetail: list1)));
                },          
            );
            })),
            Center(
            child: ElevatedButton(
            onPressed: () {
              Navigator.push(  // stack : page를 담는 구조
              context,
              MaterialPageRoute(builder: (context) => const MyApp1()),  // 클래스 인스턴스
            );
            },
            child: const Text("사진 창으로"),
          )
        ),
      ]),
    );
  }
}

// 문제
// 버튼을 추가하고 클릭 시 이미지를 출력하는 페이지(image.dart)로 이동
// 다시 복귀하는 회로를 추가

