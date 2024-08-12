import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var ColorList = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.black,
      Colors.orange,
      Colors.pink,
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: PageView.builder(
            itemCount: ColorList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Container(
              color: ColorList[index],
              child: Center(child: Text(index.toString())),
            ),
          ),
        ),
      ),
    );
  }
}
