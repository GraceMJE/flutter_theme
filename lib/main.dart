import 'package:flutter/material.dart';

import 'sytle/theme.dart';

void main() {
  runApp(
    // theme위치 공간은 Material App 내부에 ~
    MaterialApp(
      home: HomeWidget(),
      theme: customTheme
    ),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    // Theme 가져오는 코드
    final textTheme = customTheme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Theme 적용하기'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Press Count', style: textTheme.bodyLarge,),
            Text('$count', style: textTheme.displayLarge,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          count++;
        });
      }),
    );
  }
}
