import 'dart:developer';
import 'package:app_surici/Gallery/galleryArda.dart';
import 'package:app_surici/Gallery/galleryBerkay.dart';
import 'package:app_surici/Gallery/galleryDogukan.dart';
import 'package:app_surici/Gallery/galleryEnes.dart';
import 'package:app_surici/Gallery/galleryEsat.dart';
import 'package:app_surici/Gallery/galleryGenel.dart';
import 'package:app_surici/Gallery/galleryHidir.dart';
import 'package:app_surici/Gallery/galleryMert.dart';
import 'package:app_surici/Gallery/galleryOmer.dart';
import 'package:app_surici/Gallery/gallerySazci.dart';
import 'package:app_surici/Gallery/galleryRemzi.dart';
import 'package:app_surici/Gallery/gallerySalih.dart';
import 'package:app_surici/Gallery/galleryTuna.dart';
import 'package:app_surici/Gallery/galleryYasar.dart';
import 'package:app_surici/Gallery/galleryEngin.dart';
import 'package:flutter/material.dart';

class galleryPage extends StatefulWidget {
  const galleryPage({Key? key}) : super(key: key);

  @override
  galleryPageState createState() => galleryPageState();
}

class galleryPageState extends State<galleryPage> {
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
          spreadRadius: 5,
          blurRadius: 5,
        ),
      ],
    );
  }

  Widget getExpanded(
    String imageName,
    String mainText,
    String subText,
    dynamic page, //var
  ) {
    return SizedBox(
      height: 170.0,
      child: MaterialButton(
        padding: const EdgeInsets.all(0),
        child: Container(
          margin: const EdgeInsets.only(
              left: 10.0, top: 10.0, right: 10.0, bottom: 30.0),
          decoration: getBoxDecoration(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/$imageName.png',
                    height: 75.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  mainText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  subText,
                  style: const TextStyle(
                    fontSize: 10.0,
                  ),
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Fotoğraflar",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
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
              child: ListView(
                children: [
                  getExpanded(
                      'photos', 'Genel', '161 Fotoğraf', const galleryGenel()),
                  getExpanded(
                      'photos', 'Arda', '8 Fotoğraf', const galleryArda()),
                  getExpanded(
                      'photos', 'Berkay', '19 Fotoğraf', const galleryBerkay()),
                  getExpanded('photos', 'Doğukan', '13 Fotoğraf',
                      const galleryDogukan()),
                  getExpanded(
                      'photos', 'Enes', '54 Fotoğraf', const galleryEnes()),
                  getExpanded(
                      'photos', 'Engin', '11 Fotoğraf', const galleryEngin()),
                  getExpanded(
                      'photos', 'Esat', '11 Fotoğraf', const galleryEsat()),
                  getExpanded(
                      'photos', 'Hıdır', '13 Fotoğraf', const galleryHidir()),
                  getExpanded('photos', 'İsmail Abi', '11 Fotoğraf',
                      const gallerySazci()),
                  getExpanded(
                      'photos', 'Mert', '48 Fotoğraf', const galleryMert()),
                  getExpanded(
                      'photos', 'Ömer', '19 Fotoğraf', const galleryOmer()),
                  getExpanded(
                      'photos', 'Remzi', '16 Fotoğraf', const galleryRemzi()),
                  getExpanded(
                      'photos', 'Salih', '16 Fotoğraf', const gallerySalih()),
                  getExpanded(
                      'photos', 'Tuna', '34 Fotoğraf', const galleryTuna()),
                  getExpanded(
                      'photos', 'Yaşar', '71 Fotoğraf', const galleryYasar()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
