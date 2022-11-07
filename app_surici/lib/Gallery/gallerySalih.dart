import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class gallerySalih extends StatefulWidget {
  const gallerySalih({Key? key}) : super(key: key);

  @override
  State<gallerySalih> createState() => _gallerySalihState();
}

class _gallerySalihState extends State<gallerySalih> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2FIMG-20200321-WA0016.jpg?alt=media&token=68aa2c6b-4463-42cd-a55b-5c3ece1f43a3",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2F11db43bf-e2b4-4fdd-bb84-49f2fd037802.jpg?alt=media&token=b1cbb0a3-d5ca-4388-bd9d-83494210d27e",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2F12540947_1539992122995338_7804437377541598383_n.jpg?alt=media&token=e32fb900-db01-43ee-bea2-a28e0a1b4ba1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2F13923554_1651959661798583_8475738854057345780_o.jpg?alt=media&token=52146bb9-0798-40bb-a44b-699885c88018",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2F18765622_1826417261019488_7701267574021415366_n.jpg?alt=media&token=75d64a20-dbc8-4a04-b0e3-0f8bbdba37ec",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2F20180427_184934.jpg?alt=media&token=22087222-7dfb-4e64-9286-cb74ab366d15",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2F20180521_231444.jpg?alt=media&token=bc445d1b-b2fb-4fc7-aaec-a545583f0766",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2F20190707_223600.jpg?alt=media&token=b71cb83c-e588-4632-81a3-597544ff7b46",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2F2c4e1b5b-4c5d-4585-9ef4-420d389b0ebf.jpg?alt=media&token=14b0a923-246a-496e-9ab2-dfeba6e341b7",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2F2c4e1b5b-4c5d-4585-9ef4-420d389b0ebf.jpg?alt=media&token=14b0a923-246a-496e-9ab2-dfeba6e341b7",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2FIMG-20180825-WA0006.jpg?alt=media&token=a2ad0b95-d16e-444f-9b0d-246518cc3ee7",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2FIMG-20191012-WA0006.jpg?alt=media&token=834bde67-e4c0-40ad-a941-b500658a5a6f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2Fimg2%20(1).jpg?alt=media&token=e9d0ffad-e60b-4b83-8f7c-795c9c467819",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2Fimg2%20(4).jpg?alt=media&token=c87cb3f7-68fc-4ec4-afa6-7268aa3c472e",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2Farrap_duldulu.jpg?alt=media&token=c663eee8-a01f-420f-8389-f8d9b8394c17",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FSalih%2Fezgif-7-00cdf5ff1171.gif?alt=media&token=407ab0cf-13e6-4c0a-a447-7d5d2cacd539",
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
