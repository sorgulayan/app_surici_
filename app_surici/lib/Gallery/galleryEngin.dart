import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class galleryEngin extends StatefulWidget {
  const galleryEngin({Key? key}) : super(key: key);

  @override
  State<galleryEngin> createState() => _galleryEnginState();
}

class _galleryEnginState extends State<galleryEngin> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEngin%2FIMG-20180307-WA0024.jpg?alt=media&token=0fa0ca22-22d4-4597-b605-34bbdf95a19a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEngin%2FIMG-20180307-WA0026.jpg?alt=media&token=67234575-53cd-4f27-af61-61b947de73c7",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEngin%2FIMG-20180613-WA0003.jpg?alt=media&token=77156eac-797e-419c-975d-3b2e6df26627",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEngin%2FIMG-20180613-WA0062.jpg?alt=media&token=53f3cc1b-27d6-494e-8168-c9fa2c559450",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEngin%2FIMG-20180613-WA0076.jpg?alt=media&token=9d85844c-9ccd-4d87-bfb3-32b81ee16f36",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEngin%2FIMG-20181026-WA0006.jpg?alt=media&token=5e2e357d-d5ef-479c-8b21-5cebbada0be3",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEngin%2FIMG-20181101-WA0014.jpg?alt=media&token=0d2cc54e-a00c-40fa-9585-a8efa8cba8e0",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEngin%2FIMG-20181208-WA0000.jpg?alt=media&token=53b18f86-766d-4e93-9557-0a12650cdcdc",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEngin%2FIMG-20190618-WA0005.jpg?alt=media&token=03c49535-daec-40a6-8d97-5ca7d9ae73e0",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEngin%2FIMG_2620.JPG?alt=media&token=946e2d90-aece-4aa4-a17e-8094c03493ae",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEngin%2Fengin%20k%C3%B6yl%C3%BC.jpg?alt=media&token=2cb81c95-1bb7-48a0-ad22-f59643bf77e1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 40, 35),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
                carouselController: controller,
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
                options: CarouselOptions(
                    height: 325,
                    autoPlay: true,
                    enableInfiniteScroll: false,
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index))),
            const SizedBox(height: 12),
            buildIndicator()
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: const ExpandingDotsEffect(
            dotWidth: 15, activeDotColor: Colors.blue),
        activeIndex: activeIndex,
        count: urlImages.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String urlImage, int index) =>
    Image.network(urlImage, fit: BoxFit.cover);
