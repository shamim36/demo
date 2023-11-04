import 'package:demo_app/Home_Screen.dart';
import 'package:demo_app/Learning_Topic.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn The Universe',
      debugShowCheckedModeBanner: false,

      home: Home(),
      );
    
  }
}
