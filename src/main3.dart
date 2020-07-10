import 'package:flutter/material.dart';
import 'package:video_app/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Video List Demo',
      theme: ThemeData.dark(),
      home: MainScreen(),
    );
  }
}
