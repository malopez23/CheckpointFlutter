import 'package:flutter/material.dart';
import 'listscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frameworks Mais Utilizados',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: ListScreen(),
    );
  }
}
