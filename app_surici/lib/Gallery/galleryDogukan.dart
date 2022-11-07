import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class galleryDogukan extends StatefulWidget {
  const galleryDogukan({Key? key}) : super(key: key);

  @override
  State<galleryDogukan> createState() => _galleryDogukan();
}

class _galleryDogukan extends State<galleryDogukan> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FDo%C4%9Fukan%2F12321117_134683963566802_4066679566476636341_n.jpg?alt=media&token=008263da-f86c-4e00-8c67-5a6ec3104c26",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FDo%C4%9Fukan%2F12342802_134685040233361_5893062438593288427_n.jpg?alt=media&token=ce16cb11-4dbf-4e0e-bfac-b4e6e3bfcf11",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FDo%C4%9Fukan%2F20190624_182740.jpg?alt=media&token=eccb831d-9fae-44bd-aad6-a2a6e2ac8c7f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FDo%C4%9Fukan%2F20190624_173456.jpg?alt=media&token=3ce6b4ed-d41d-4e9a-b549-c05d407010ee",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FDo%C4%9Fukan%2FIMG-20190625-WA0001.jpg?alt=media&token=1577079a-fdd5-4a0d-a81a-18fc98e5d164",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FDo%C4%9Fukan%2FIMG-20200321-WA0017.jpg?alt=media&token=8a9365fc-78a8-4cf0-82ad-0264090c452c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FDo%C4%9Fukan%2Fdogukan%20%C3%A7at%C4%B1yor.png?alt=media&token=7f747ecc-f2a1-4117-9302-712139862f55",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FDo%C4%9Fukan%2Fdo%C4%9Fukan%20atlat%202.jpg?alt=media&token=d395abbb-4ab8-4cc4-a354-550167f5f214",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FDo%C4%9Fukan%2Fdo%C4%9Fukan%20kafa.png?alt=media&token=33dedeec-ded5-4d29-b2cd-f5ab1a5b06c2",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FDo%C4%9Fukan%2Fdogukann2%20(1).jpg?alt=media&token=7fc264b2-c522-469f-8d0e-6acb1740ec16",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FDo%C4%9Fukan%2Fdogukann2%20(1).png?alt=media&token=0ccf97ca-577e-4701-b14a-4df8ed574ed5",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FDo%C4%9Fukan%2Fdogukann2%20(2).png?alt=media&token=b416a2a6-1af8-47d6-8df0-9c576954f023",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FDo%C4%9Fukan%2Fdogukann2%20(3).png?alt=media&token=63a5f128-e20a-4ce6-b790-0b93a51638f3",
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
