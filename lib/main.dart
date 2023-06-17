import 'package:flutter/material.dart';
import 'pages/ToF_quiz.dart';
import 'pages/home.dart';
import 'pages/true_or_false.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      routes: {
        "/true_or_false": (_) => const TrueOrFalse(),
        "/true_or_false_quiz":(_) => const ToFQuiz(),
      },
    );
  }
}
