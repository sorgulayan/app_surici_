import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class galleryHidir extends StatefulWidget {
  const galleryHidir({Key? key}) : super(key: key);

  @override
  State<galleryHidir> createState() => _galleryHidirState();
}

class _galleryHidirState extends State<galleryHidir> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2F1.PNG?alt=media&token=c6b5e7e0-3aea-4ebe-9de6-aa84b0158848",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2FIMG_2032.JPG?alt=media&token=c5fab3c0-7a17-497a-bfa8-b1d8547669dd",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2FScreenshot_20170729-214718.jpg?alt=media&token=64397ba9-c5e9-4cdd-9b35-7935312f3588",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2Fe18ef94c-bcdd-4440-8ae1-fc609c7ba474.jpg?alt=media&token=9ad1cded-1722-44d0-bd62-a7feffdbcdec",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2Ffffffffffffff.PNG?alt=media&token=c015f3f4-5b24-4ef6-9dc4-1216574123a3",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2Fhidir.jpg?alt=media&token=dfc96667-b4a5-4cbc-b7f7-90f8aea24edf",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2Fs4.png?alt=media&token=12375109-4a29-4125-8492-95a081e66fea",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2Ftamammm.png?alt=media&token=266b31e1-37fd-41ed-9d99-ba72779ffbb9",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2FScreenshot_20190509-202054.png?alt=media&token=46f3e848-c090-4304-9365-164306cd68b8",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2FIMG-20170819-WA0009.jpg?alt=media&token=8a21c126-a5df-4fb1-a011-e1d57a14a118",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2Funknown_2.png?alt=media&token=da635ab4-2f1d-435f-af88-6e2b5c42a387",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2Freceived_1389674954398891.jpeg?alt=media&token=92158b3b-c97c-49a0-95af-0519d8a8e82f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2FIMG-20170829-WA0019.jpg?alt=media&token=9af55e80-88de-4eb8-b957-eec82326061d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FH%C4%B1d%C4%B1r%2FIMG_20190603_130827_047.jpg?alt=media&token=346424e5-be1e-4bed-889f-2a4d21fcd60f",
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
