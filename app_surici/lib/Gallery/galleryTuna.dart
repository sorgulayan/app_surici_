import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class galleryTuna extends StatefulWidget {
  const galleryTuna({Key? key}) : super(key: key);

  @override
  State<galleryTuna> createState() => _galleryTunaState();
}

class _galleryTunaState extends State<galleryTuna> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2F20180125_131809.jpg?alt=media&token=9e4d5d50-68a9-400d-9e81-23b716bb76c3",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20171011-WA0010.jpg?alt=media&token=dda73c8b-f3f2-4620-ab03-abd203ccb988",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20180330-WA0034.jpg?alt=media&token=56def886-5c41-48b1-857d-3bd2c7929375",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20180407-WA0004.jpg?alt=media&token=ff0fa721-043d-44d4-873d-b89231af1b78",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20180611-WA0014.jpg?alt=media&token=c79d71d5-8666-49c4-9d9a-bef68c75760e",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20180613-WA0005.jpg?alt=media&token=997df992-5549-4bfe-b46c-76ebe63700e1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20180613-WA0006.jpg?alt=media&token=e8c5abbf-ee59-4f32-989b-d6770b61e5b3",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20180613-WA0023.jpg?alt=media&token=61fd4356-0f2b-40ba-8bc7-2168cb476071",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20180613-WA0074.jpg?alt=media&token=a188047d-8805-449a-a645-6d43c63c326d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20180625-WA0049.jpg?alt=media&token=3616e900-8e74-4612-afa3-6ce73557f2a6",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20180731-WA0011.jpg?alt=media&token=151339aa-095a-4121-a649-e54422e9eb09",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20180628-WA0005.jpg?alt=media&token=064930cb-c27a-47df-84df-c4a46c291782",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20181216-WA0000.jpg?alt=media&token=23815a12-369b-4c67-896f-247f656338d5",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20190114-WA0011.jpg?alt=media&token=951aaa48-9762-4c47-a414-cf2190772fc9",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20190322-WA0013.jpg?alt=media&token=b567175b-fff5-4e37-b190-5fff239e290f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20191002-WA0006.jpg?alt=media&token=db26b09f-0d30-4e93-a294-2893ebcfb71f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20200211-WA0003.jpg?alt=media&token=7ae6bb14-b690-4324-838d-e8b5becf95b8",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FIMG-20200404-WA0017.jpg?alt=media&token=e250fa1e-b240-4a81-bd49-2580ae810d43",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FJPEG_20190123_183055.jpg?alt=media&token=5cfcafa1-e533-4d63-95da-c65d23cf3875",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2FPICT0127.JPG?alt=media&token=6c1a69bc-741b-4a36-8daa-5ea8a739c115",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2Fbcr_tuna_selfie.jpg?alt=media&token=412adb32-19d0-4d22-86ef-992f4482ec9c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2Fkavun_tuna.jpg?alt=media&token=c48ca528-5c18-40ee-abb7-4f1c538e1084",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2Fpp.jpg?alt=media&token=6fdb71cb-fcc7-4d56-be30-869028abaab0",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2Ftuna%20velet.jpg?alt=media&token=2fc2beb9-2edb-4e33-b67c-483ce5b9211a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2Fvelet%20tuna.jpg?alt=media&token=42e372eb-e8a4-44da-8a37-4c0324e18513",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2F20180125_131809.jpg?alt=media&token=9e4d5d50-68a9-400d-9e81-23b716bb76c3",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2Ftunna1%20(2).jpeg?alt=media&token=f28d98c1-8f3e-4069-9d29-47ee93db0046",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2Ftunna1%20(2).png?alt=media&token=00779aad-7095-4bdd-b5d1-9a5a5a7a41c5",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2Ftunna1%20(1).jpeg?alt=media&token=b38d67d5-3e0b-4abb-ad80-8d7c169d1c62",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2Ftunna1%20(1).png?alt=media&token=0941708a-a4c3-4842-96e6-eec4d721eef8",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2Ftunna1%20(1).jpg?alt=media&token=2765b75f-5aaf-416d-ba9d-039a7693d21f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2Ftunna1%20(2).jpg?alt=media&token=7b031f2e-bc6c-4a5d-8735-9d6aa16759c1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FTuna%2Ftunna1%20(3).jpg?alt=media&token=058b3ca2-e653-402d-9c15-0880f55824d1",
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
