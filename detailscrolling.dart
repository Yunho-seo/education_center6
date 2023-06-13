import 'package:flutter/material.dart';

class MyScrollableWidget extends StatelessWidget {
  const MyScrollableWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 36,
        color: Colors.blue),  // const Theme.of(context).textTheme.bodyMedium,
      child: LayoutBuilder(  // 배치를 위한 제약사항 (BoxConstraints)
      // BoxConstraints : 부모가 자식 윈도우를 부모 사이즈로 제어(제한)하고자 할 때 사용
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: const Color(0xffeeee00), // Yellow
                    height: 520.0,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        const Text('상위 컨테이너'),
                        ElevatedButton(
                          child: const Text("뒤로 돌아가기"),
                          onPressed: () {
                            Navigator.pop(context);
                          })
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xff008000),  // Green
                    height: 520.0,
                    alignment: Alignment.center,
                    child: const Text('하위 컨테이너'),
                  ),
                ],
              ),
            )
          );
        }
      )
    );
  }
}