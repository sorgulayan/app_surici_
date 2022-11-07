import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class galleryMert extends StatefulWidget {
  const galleryMert({Key? key}) : super(key: key);

  @override
  State<galleryMert> createState() => _galleryMertState();
}

class _galleryMertState extends State<galleryMert> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2F90_543_466_1759_20170214_205246.jpg?alt=media&token=b054df69-df45-4761-8a23-78c50b60a37d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180307-WA0030.jpg?alt=media&token=6e05de7c-ac3b-4d2e-96c2-17f39daf7d7c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180307-WA0153.jpg?alt=media&token=5611a374-70f1-4b84-a568-8b32ac6ef757",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180421-WA0003.jpg?alt=media&token=49af7187-e8c9-46aa-be12-088b10f99d05",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180421-WA0004.jpg?alt=media&token=5354d735-92c7-4f34-8083-c6f822910aef",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180429-WA0009.jpg?alt=media&token=7896f88a-6d0a-4d9a-9d55-e754d8e1906a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180429-WA0011.jpg?alt=media&token=8154d007-9d39-4614-a215-f2a356be86ef",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180430-WA0018.jpg?alt=media&token=3e7d50a1-c6fd-4da1-8cc2-bc4432c81b2b",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180613-WA0007.jpg?alt=media&token=376c87e9-3dd4-46d4-84f3-e0aae6bf6a6f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180613-WA0009.jpg?alt=media&token=da15fff3-29a0-400f-aca6-4aa03eb85d19",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180613-WA0010.jpg?alt=media&token=0a975e8b-4ea0-41f5-ab51-7e1862f97082",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180613-WA0010.jpg?alt=media&token=0a975e8b-4ea0-41f5-ab51-7e1862f97082",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180613-WA0018.jpg?alt=media&token=fe10fb9b-6245-4327-9f58-95622857a390",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180613-WA0068.jpg?alt=media&token=86e90ed8-14c3-4542-a5df-45490fb6c83f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180613-WA0077.jpg?alt=media&token=54fc9c19-98cc-4af1-beba-3242fe0646dd",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180706-WA0003.jpg?alt=media&token=a780822b-e495-4ddb-9adc-0983ec0cd579",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180712-WA0003.jpg?alt=media&token=df8b68cf-6bf1-4185-9798-f5b5230954df",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180812-WA0003.jpg?alt=media&token=aa8cee15-be3a-423e-aa87-5db63774a320",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180816-WA0006.jpg?alt=media&token=a27f2bcc-bc2f-4362-9bd7-c62617090f78",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180820-WA0045.jpg?alt=media&token=c0e41026-2cdc-4f3c-9e77-cdb698310c42",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180824-WA0001.jpg?alt=media&token=86bf6b78-610b-4d9a-a6e2-36e95ec32948",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180825-WA0008.jpg?alt=media&token=3d8c94d3-40b8-4ee9-b744-f356e49a1472",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180826-WA0014.jpg?alt=media&token=7c3c3455-a7b4-4fe7-b239-a75c0b9b58b1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180826-WA0015.jpg?alt=media&token=63415fc4-82cb-46e2-a784-f2a65500291c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180826-WA0016.jpg?alt=media&token=557808dd-1e52-448a-95b0-4e1473c9a23e",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180826-WA0017.jpg?alt=media&token=97ba9d45-e0f4-477f-9d4c-c7747516b4bf",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180827-WA0012.jpg?alt=media&token=a55e2956-2bb1-4a4b-9795-5d88362ec78e",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180829-WA0001.jpg?alt=media&token=97d45ebb-eeab-4840-bd62-942bef235000",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20180920-WA0005.jpg?alt=media&token=9de91baf-66ae-4e52-92e4-0b2badd0100a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20181015-WA0001.jpg?alt=media&token=64736ebe-a95c-418c-9483-3baf97bf2720",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20181026-WA0007.jpg?alt=media&token=77a399a5-f7c5-44da-8b8f-aefba5e00fc9",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20181123-WA0010.jpg?alt=media&token=d8259c33-fa74-4b98-8617-c6202eb85a96",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20181129-WA0012.jpg?alt=media&token=f665575a-f90f-4189-b46a-853061409e4d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20181209-WA0004.jpg?alt=media&token=9d9f502c-85db-46b0-aa0d-c732df3782bf",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20181222-WA0008.jpg?alt=media&token=eda2aa54-ab8f-40a1-a05f-678d03586d7d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20190113-WA0005.jpg?alt=media&token=c212424a-cfc0-4dc2-913e-1b7bef287529",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20190315-WA0012.jpg?alt=media&token=37400b51-12c5-4119-8b43-e0681532c1e0",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20190602-WA0011.jpg?alt=media&token=ee3525b1-d2e8-478c-b7e8-5a3aacffaa79",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20190605-WA0084.jpg?alt=media&token=871e4c95-74da-40e0-be6d-4a1f56776a1c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG-20200213-WA0006.jpg?alt=media&token=d2f095e1-f925-428e-ae96-dcc61041bba6",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG_0600.JPG?alt=media&token=42f1a232-b9ab-4b0a-9680-7619ed01b28c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG_0734.JPG?alt=media&token=7b7d3820-04d3-4938-8765-e9a83964aa4e",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG_0756.JPG?alt=media&token=72390a1d-4c5e-4cb3-bfc8-b252d96fdcfc",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2FIMG_1990.JPG?alt=media&token=45131a4a-c9dd-43f4-93f0-7cde733ddfc0",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2Fmert_kafa_topu.png?alt=media&token=898133f3-8fb8-403c-84a7-5f19fa5b25ba",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2Fmertt.jpg?alt=media&token=8b7320a6-d298-4471-ace3-acf29c03dbb0",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FMert%2Fmertttt.jpg?alt=media&token=88c1ebf8-a996-4eab-bfce-27bdacada052",
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
