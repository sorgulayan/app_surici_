import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class galleryArda extends StatefulWidget {
  const galleryArda({Key? key}) : super(key: key);

  @override
  State<galleryArda> createState() => _galleryArdaState();
}

class _galleryArdaState extends State<galleryArda> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FArDA%2FIMG-20180330-WA0024.jpg?alt=media&token=c446192c-f8c0-4781-a378-b371834a3a8f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FArDA%2FIMG-20180402-WA0011.jpg?alt=media&token=61be1198-4b9a-4eaa-ad88-aaa082f406a5",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FArDA%2FIMG-20180402-WA0014.jpg?alt=media&token=10b9689d-4c98-4e0a-8e2b-3d23242f09e4",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FArDA%2FIMG-20180402-WA0016.jpg?alt=media&token=561a0bf1-c94f-43e5-a29b-989711af948a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FArDA%2FIMG-20180608-WA0003.jpg?alt=media&token=1bbf9b5e-566d-428f-9fa2-a7cf908297c0",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FArDA%2FIMG-20180608-WA0014.jpg?alt=media&token=eb4121ae-83f8-4263-b7fb-18da2111311f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FArDA%2FIMG-20180803-WA0000.jpg?alt=media&token=d167f53b-812b-4d4c-b2ed-050916b0b122",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FArDA%2FIMG-20190605-WA0060.jpg?alt=media&token=37889012-c6f2-4d96-892a-a77861293337",
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
