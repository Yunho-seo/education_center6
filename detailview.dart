import 'package:flutter/material.dart';

class ListDetail{  // 데이터 송수신을 위한 클래스 / Dart 클래스도 this.를 사용한다. 
  String name;
  int msgCount;
  // this : 인스턴스하여 메모리에 있는 위치
  ListDetail(this.name, this.msgCount);  // 생성자
}

class ListDetailView extends StatelessWidget {
  final ListDetail listDetail;
  // python은 self 형식이 들어와야 함, key는 생략
  const ListDetailView({Key? key, required this.listDetail }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('상세화면')
      ),
      body:Center(
        child: Column(  // 여러개의 위젯을 배치하는 위젯
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("이름 : ${listDetail.name}"),
            Text("메시지 카운트 : ${listDetail.msgCount}"),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context, 'ok');
              },
              child: const Text('이전 페이지로'),
            )
          ],
        ),
      ),
    );
  }
}