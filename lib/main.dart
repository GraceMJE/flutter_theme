import 'package:flutter/material.dart';

void main() {
  runApp(
    // theme위치 공간은 Material App 내부에 ~
    MaterialApp(
      home: HomeWidget(),
      theme: ThemeData(
        // 기본구현
        // colorScheme: const ColorScheme.light(
        //   primary: Colors.indigo,
        //   secondary: Colors.green,
        //   tertiary: Colors.yellow,

        // 사용자화면에 어울리는 색상으로
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),

        // 다크모드 설정
        //   colorScheme: ColorScheme.dark(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontWeight: FontWeight.normal, fontSize: 30),
        ),
        useMaterial3: true,
      ),
      // appBarTheme: AppBarTheme(
      //   backgroundColor: Colors.red,
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
    final textTheme = Theme.of(context).textTheme;

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
