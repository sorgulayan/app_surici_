import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class galleryRemzi extends StatefulWidget {
  const galleryRemzi({Key? key}) : super(key: key);

  @override
  State<galleryRemzi> createState() => _galleryRemziState();
}

class _galleryRemziState extends State<galleryRemzi> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2FIMG-20160607-WA0024.jpg?alt=media&token=dce6c177-8778-49c1-a902-250773dc03bb",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2FIMG-20180307-WA0147.jpg?alt=media&token=0fb5b4dc-6b24-4931-8f9f-27d8193a7507",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2FIMG-20180711-WA0007.jpg?alt=media&token=5c86f824-7678-44ed-a3cc-9b8d5c98e9e3",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2FIMG-20180903-WA0008.jpg?alt=media&token=cc2911c4-34d5-4c4a-9eee-ce350aee8ad6",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2FIMG-20181201-WA0002.jpg?alt=media&token=91213ddb-5a05-49bf-b331-c449ac9c9abc",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2FIMG-20190605-WA0077.jpg?alt=media&token=e0504a81-b2ed-41a6-9d4f-980ccb6ebec5",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2FIMG_2192.jfif?alt=media&token=99d879b5-7cae-45ee-b68c-fa9f4351c395",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2Fameno_remzii.png?alt=media&token=fc291028-03ad-442a-9029-5ea20e93b456",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2Fasdsad.png?alt=media&token=4f106fec-8def-4c19-acce-5884eba2b921",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2Fremzi%20keko.jpg?alt=media&token=beb6df81-0472-4072-9703-27cc9aa432de",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2Fremzi_meme2.jpg?alt=media&token=7b5a7535-c402-42bf-b201-2b8c623f8fa9",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2Fremzi_okuyom.jpg?alt=media&token=fd13c4f8-7c25-49ad-b871-e027a70b3c6f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2Fgenell2%20(4).jpg?alt=media&token=256fb907-beac-4e36-9584-5e809f9fa32d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2Fgenell2%20(6).jpg?alt=media&token=c93cc072-222a-4888-a113-73fe5dfced16",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2Fgenell2%20(5).jpg?alt=media&token=1d74fb8b-fce4-47c5-a261-932978e12146",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FRemzi%2Fgenell2%20(3).jpg?alt=media&token=6478ebf9-d799-471c-aa51-5d4a29bea3bf",
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
