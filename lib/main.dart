import 'package:flutter/material.dart';
import 'package:scrol_leison/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter window",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const SafeArea(child: MyHomePage()),
    );
  }
}
