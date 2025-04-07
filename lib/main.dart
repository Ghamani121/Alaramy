import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const AlarmyApp());
}

class AlarmyApp extends StatelessWidget {
  const AlarmyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarmy',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const AlarmHomePage(),
    );
  }
}
