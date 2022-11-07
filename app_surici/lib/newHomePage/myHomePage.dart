import 'package:app_surici/Gallery/galleryPage.dart';
import 'package:app_surici/archive/archivePage.dart';
import 'package:app_surici/quiz/quizPage.dart';
import 'package:app_surici/quote/quote_page.dart';
import 'package:app_surici/videopage.dart';
import 'package:flutter/material.dart';
import '../firebase.dart';
import '../loginPage.dart';
import 'package:app_surici/memoriesPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 2,
          offset: const Offset(0, 1),
        ),
      ],
    );
  }

  Expanded getExpanded(
    String imageName,
    String mainText,
    String subText,
    dynamic page, //var
  ) {
    return Expanded(
      child: MaterialButton(
        padding: const EdgeInsets.all(0),
        child: Container(
          margin: const EdgeInsets.only(
              left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
          decoration: getBoxDecoration(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/$imageName.png',
                    height: 80.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  mainText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  subText,
                  style: const TextStyle(
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page)); //
        },
      ),
    );
  }

  final FirebaseService _FirebaseService = FirebaseService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                _FirebaseService.logOut().then((value) =>
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginPage()),
                        (Route<dynamic> route) => false));
              },
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ))
        ],
        elevation: 5,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "SurTown",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('photos', 'Fotoğraflar',
                      'Kategorilendirilmiş albümler', const galleryPage()),
                  getExpanded('videos', 'Videolar', 'Bazı seçme videolar',
                      const videos()),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('memories', 'Anılar', 'Eğlenceli anlarımız',
                      memoriesPage()),
                  getExpanded(
                      'quote', 'Replikler', 'Dc replikleri', const QuotePage()),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('archive', 'Arşiv', 'Zengin bir kütüphane',
                      const ArchivePage()),
                  getExpanded('competition', 'Bilgi Yarışması',
                      'Eğlenceli bir quiz', const QuizPage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
