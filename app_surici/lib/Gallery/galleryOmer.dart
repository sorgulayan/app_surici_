import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class galleryOmer extends StatefulWidget {
  const galleryOmer({Key? key}) : super(key: key);

  @override
  State<galleryOmer> createState() => _galleryOmerState();
}

class _galleryOmerState extends State<galleryOmer> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20180507-WA0007.jpg?alt=media&token=d73e89c8-e938-4bb7-931b-7ae91f819154",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20180613-WA0050.jpg?alt=media&token=a5e8ba68-b354-4640-a729-3cfc32ddb12c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20180613-WA0061.jpeg?alt=media&token=2412efb6-b06c-4d34-8b8b-bf8eded61525",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20180615-WA0019.jpg?alt=media&token=6ca8d7a1-7199-47a6-a168-60527a8dc68c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20180620-WA0019.jpg?alt=media&token=5854fc87-5e21-4919-9edd-b859372d4e2c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20180718-WA0000.jpg?alt=media&token=e33fca0f-3542-42fa-a55e-953e336c8a22",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20180819-WA0032.jpg?alt=media&token=f2d87c80-75e1-40df-bfcb-adea65bd5384",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20180820-WA0024.jpg?alt=media&token=6910625f-e728-46c2-ae44-345300263126",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20190114-WA0018.jpg?alt=media&token=2301f100-9678-4a2c-8ea9-b02345b7aab6",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20190424-WA0010.jpg?alt=media&token=8a1b8ba2-b8af-40fd-a676-af08c9e867da",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20190424-WA0011.jpg?alt=media&token=ddc678ab-f811-4fe7-a11a-f88e86c1c820",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20190427-WA0054.jpg?alt=media&token=5283137d-7a50-4190-acf3-b3e7e3d2a915",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20190602-WA0001.jpg?alt=media&token=85f7a132-87e3-44ce-91c0-618f2e178b6f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20190605-WA0018.jpg?alt=media&token=70447e34-9604-4df3-8851-f8f36680d104",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20190605-WA0059.jpg?alt=media&token=ca19e10f-28ec-43ae-a438-fe53039d8851",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20190615-WA0026.jpg?alt=media&token=9f712223-d9ae-4c18-a40d-6b25ba5ed59c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20190617-WA0019.jpg?alt=media&token=9c1a7190-9cad-4bae-9e34-aa7de93f3c87",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20190617-WA0020.jpg?alt=media&token=062ee3aa-f2dd-4a5d-a081-2ea5c79929e5",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2F%C3%96mer%2FIMG-20190718-WA0000.jpg?alt=media&token=91768bc1-e0a1-48e8-bd71-84a64c6218ff",
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
