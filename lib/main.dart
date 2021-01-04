import 'package:flutter/material.dart';
import 'package:flutter_news/views/home.dart';

void main() => runApp(myapp());

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutterNews',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: home(),
    );
  }
}
