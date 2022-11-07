import 'dart:developer';
import 'package:app_surici/firebase.dart';
import 'package:app_surici/loginPage.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            TextField(
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
                  borderSide: const BorderSide(color: Colors.black, width: 1.5),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: t2,
              cursorColor: Colors.black,
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
                  borderSide: const BorderSide(color: Colors.black, width: 1.5),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                _FirebaseService.register(t1.text, t2.text)
                    .then((value) => Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const LoginPage(),
                        )));
                debugPrint("kayit olundu");
              },
              height: 45,
              color: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                "Kayıt Ol",
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
                  'Hesabın var mı?',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const LoginPage();
                    }));
                  },
                  child: const Text(
                    'Giriş Yap',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
