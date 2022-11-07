import 'dart:developer';
import 'package:app_surici/registerPage.dart';
import 'package:flutter/gestures.dart';
import 'package:app_surici/newHomePage/myHomePage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'firebase.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

var defaultText = const TextStyle(color: Color.fromARGB(255, 85, 85, 85));
var linkText = const TextStyle(color: Colors.blue);

class _LoginPageState extends State<LoginPage> {
  final FirebaseService _FirebaseService = FirebaseService();

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Stack(children: [
                Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: Image.network(
                    'https://iili.io/DqgRcX.png',
                    height: 280,
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                controller: t1,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0.0),
                  labelText: 'Email',
                  hintText: 'Kullanıcı adı veya e-mail',
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                controller: t2,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0.0),
                  labelText: 'Parola',
                  hintText: 'Şifre',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ), //GİRİŞ YAP
            MaterialButton(
              onPressed: () async {
                await _FirebaseService.login(t1.text, t2.text).then((value) =>
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const MyHomePage()),
                        (Route<dynamic> route) => false));
                debugPrint("giriş yapıldı");
              },
              height: 45,
              color: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                "Giriş",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Kayıt olmadınız mı?',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () async {
                    await Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const RegisterPage();
                    }));
                  },
                  child: const Text(
                    'Kayıt Ol',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    style: defaultText,
                    text: "Sursoft",
                  ),
                  TextSpan(
                      style: linkText,
                      text: " Linktree",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          var url = "https://linktr.ee/sursorft";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                ]))
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
