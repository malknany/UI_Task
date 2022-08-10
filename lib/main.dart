import 'package:flutter/material.dart';
import 'fristpage.dart';
void main()=>runApp(MyApp1());
class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task',
      home: FristPage(),
    );
  }
}
