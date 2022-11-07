import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class gallerySazci extends StatefulWidget {
  const gallerySazci({Key? key}) : super(key: key);

  @override
  State<gallerySazci> createState() => _gallerySazciState();
}

class _gallerySazciState extends State<gallerySazci> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2Fsazciso%2F17-11-07-15-00-10-479_deco.jpg?alt=media&token=e28b40e7-4788-4432-bfc1-e9376b14f176",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2Fsazciso%2F20170809_115402.jpg?alt=media&token=7808c84d-a935-4f23-8d21-6b42cc6cd24f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2Fsazciso%2F20200919_010926.jpg?alt=media&token=395bfb35-c45b-4ba7-a270-eb9bd50d137c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2Fsazciso%2F2e445ba8-0b07-4a12-8e03-05a5e88adf19.jpg?alt=media&token=f05d682b-5d63-4e55-b728-7d65975d13ea",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2Fsazciso%2FFB_IMG_1462406323771.jpg?alt=media&token=83df6a99-701c-45a6-b70d-092e76534ce9",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2Fsazciso%2FIMG_20150507_123011.jpg?alt=media&token=5573e5bd-3341-4de5-8aa7-fc96f85cfc80",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2Fsazciso%2FIMG_20160831_183906.jpg?alt=media&token=8c00d537-5080-4a67-94c6-078ee40b57e3",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2Fsazciso%2FIMG_20161012_125625.jpg?alt=media&token=02d829a4-f701-483a-85fe-78404d66437b",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2Fsazciso%2FScreenshot_20190626-111434_Messenger.jpg?alt=media&token=61a4d0c6-359d-41d4-85cd-6a44abe24539",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2Fsazciso%2FScreenshot_20200830-012656_Photos.jpg?alt=media&token=56b865b8-e3c4-4fa5-962d-a34d6d86d8bc",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2Fsazciso%2FScreenshot_20200901-033104_Photos.jpg?alt=media&token=1e8d1a8d-ad9d-4dbf-bbfe-9bf9b8b2b794",
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
