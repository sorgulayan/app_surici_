import 'package:flutter/material.dart';
import 'package:app_surici/quiz/quizScreen.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Surtown Quiz',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const QuizScreen());
  }
}
