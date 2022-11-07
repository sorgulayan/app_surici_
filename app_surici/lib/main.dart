import 'package:app_surici/loginPage.dart';
import 'package:app_surici/newHomePage/myHomePage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Surtown',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

@override
Widget build(BuildContext context) {
  return const Scaffold();
}
