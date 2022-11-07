import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class galleryEsat extends StatefulWidget {
  const galleryEsat({Key? key}) : super(key: key);

  @override
  State<galleryEsat> createState() => _galleryEsatState();
}

class _galleryEsatState extends State<galleryEsat> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEsat%2F1010640_381411681964344_1162555408_n.jpg?alt=media&token=c109b1c4-90e3-4a0a-b31c-31b0d1553859",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEsat%2F10358993_1495479250683636_9097835599458475325_o.jpg?alt=media&token=0a3f9e57-c548-48ba-8944-9af0559f7a64",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEsat%2F1889007_1464571283774433_1009900688666714109_o.jpg?alt=media&token=165bceef-bfee-458c-b8d4-e23da89cefd5",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEsat%2F1965700_1464571340441094_5657678247580721732_o.jpg?alt=media&token=08d37691-3adb-4de6-aec6-c9f1de31d2f4",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEsat%2F311031_101378009968595_924441_n.jpg?alt=media&token=90f3927d-ce77-478d-a5e6-5a1ffd33758d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEsat%2F477935_373806492724863_506288150_o.jpg?alt=media&token=3b983b3d-3900-4199-8dc6-511c39f42029",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEsat%2F778769_330112270427619_2086921106_o.jpg?alt=media&token=276bd3e6-ff39-44a0-84cb-89fde2ee1f5a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEsat%2F964573_373806239391555_514265035_o.jpg?alt=media&token=5118f2c3-09b6-448d-999f-8c0b3d112752",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEsat%2F994802_381411271964385_685576619_n.jpg?alt=media&token=c3399711-74c1-44fe-b421-afb93bad7e6a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEsat%2Fbobmarley.jpg?alt=media&token=c0a62d81-9bcc-4604-9e06-d375d69b9cf7",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEsat%2Fpng%20e%C5%9Fat.png?alt=media&token=9ce087ba-1518-454b-90e4-4d2465a82ccd",
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
