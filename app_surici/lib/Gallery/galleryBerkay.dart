import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class galleryBerkay extends StatefulWidget {
  const galleryBerkay({Key? key}) : super(key: key);

  @override
  State<galleryBerkay> createState() => _galleryBerkayState();
}

class _galleryBerkayState extends State<galleryBerkay> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2F1011879_566386093403261_901692725_n.jpg?alt=media&token=83565bf8-20d4-4359-ad04-5d55f479a0b1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2F20170524_204511.jpg?alt=media&token=246e69fd-0800-46c7-bb50-ea38a9af29e6",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2F543533_508210652554139_2060539737_n.jpg?alt=media&token=5e499ea0-1c3b-4f65-b68d-51a63ee4abe8",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2F66103_508210505887487_659360164_n.jpg?alt=media&token=6e72e9ad-d941-4ebe-87bf-4fc1c9f5d32d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20180112-WA0004.jpg?alt=media&token=334b1d50-9d5b-4c75-ad29-17f3c55b1291",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20180613-WA0073.jpg?alt=media&token=9c243db1-c721-431a-b2d1-457f6f9467b1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20180613-WA0075.jpg?alt=media&token=e98d3538-e3fa-4395-931b-317e7aa64d1f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20180618-WA0003.jpg?alt=media&token=13c16e98-f548-4b78-9fbc-8b7af948cb91",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20180619-WA0036.jpg?alt=media&token=e908c074-cb25-48dd-b210-03959040db99",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20180715-WA0001.jpg?alt=media&token=2cbbb20c-63ab-460e-9015-f5d19ddd4186",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20180716-WA0006.jpg?alt=media&token=a394cfe0-431e-49e0-b31b-e148dc20adb1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20190114-WA0021.jpg?alt=media&token=14b8ad04-7509-434e-ac27-feec4206f487",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20190225-WA0017.jpg?alt=media&token=7dde2008-eb45-4980-a3a1-9ee2aa20972b",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20190225-WA0018.jpg?alt=media&token=bb00f872-d278-41d9-a43e-1880dc0c20ec",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20190330-WA0001.jpg?alt=media&token=dc3c0800-d17d-407e-b4b2-1ae6ea1def62",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20190412-WA0007.jpg?alt=media&token=a33f8a88-a2ea-4bc9-92ee-e6da2874b133",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20190615-WA0018.jpg?alt=media&token=04aea8b3-bc58-41d7-af7c-f1bd4c6ac23b",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20190930-WA0005.jpg?alt=media&token=06a33398-c2a3-44dc-8595-986c88339d48",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FBerkay%2FIMG-20200321-WA0019.jpg?alt=media&token=417fea12-1020-43d6-bc7a-439961c21aaa",
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
