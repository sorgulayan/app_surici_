import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class galleryEnes extends StatefulWidget {
  const galleryEnes({Key? key}) : super(key: key);

  @override
  State<galleryEnes> createState() => _galleryEnesState();
}

class _galleryEnesState extends State<galleryEnes> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2F10447831_10204398616791221_3441010562093375615_n.jpg?alt=media&token=58848606-3c85-4153-97e7-80fe0955b54f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2F487526_4685117091622_200486119_n.jpg?alt=media&token=0c000aa1-06ed-429d-829f-179e91f37e65",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2F7aa33b5c-2ff1-4d79-8706-1f9ec91c74a5.jpg?alt=media&token=959ea746-969c-474d-a354-8f105f207beb",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180307-WA0025.jpg?alt=media&token=8cce2958-a17a-441d-9d1b-adebc8016853",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180307-WA0137.jpg?alt=media&token=3a6c6777-67f7-458a-8baa-b39c329a4963",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180405-WA0012.jpg?alt=media&token=f2cd6e33-e5fd-4121-98aa-00d9db09082c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180406-WA0002.jpg?alt=media&token=5d7bac50-8b81-4e79-9784-5efc6aca4924",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180411-WA0002.jpg?alt=media&token=b2592536-c814-4d62-8873-b855500bbc7e",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180429-WA0015.jpg?alt=media&token=8dc64977-80e2-424a-928b-a32bc88e57ae",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180429-WA0016.jpg?alt=media&token=b06b3ed4-4d1b-400d-97e6-ac3ed452cce2",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180501-WA0001.jpg?alt=media&token=2586f97b-2cc4-429d-893a-bed147bc2d28",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180613-WA0014.jpg?alt=media&token=84d8213a-eb11-4942-87e0-d2cf3831fe97",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180616-WA0011.jpg?alt=media&token=87f3cfcb-3fd4-4a99-99c6-39c7e044af72",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180619-WA0017.jpg?alt=media&token=f01974ce-af38-4c2e-8bad-23e0a7932c09",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180620-WA0006.jpg?alt=media&token=d682dbb2-c4a5-4c45-beb8-07b9d6de0db1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180620-WA0014.jpg?alt=media&token=071e1c49-d06b-4c17-bc1d-a5fc68d33bfe",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180620-WA0016.jpg?alt=media&token=e90e5794-a347-4e60-8866-c0feeeb5cfed",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180624-WA0073.jpg?alt=media&token=d9276447-2f77-4910-9d01-f376d952966b",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180706-WA0005.jpg?alt=media&token=405b9fbd-711c-4d47-b044-752857584e9f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180716-WA0005.jpg?alt=media&token=e0181f7f-0eb0-4a24-9ff1-39297a14ef42",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180718-WA0009.jpg?alt=media&token=a323a62b-5c4e-4804-a1c3-4cde50dd7cbc",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180724-WA0005.jpg?alt=media&token=e9c30b75-4af6-4f6a-8c66-9fbddb6a64c1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180805-WA0006.jpg?alt=media&token=55242b2b-5343-4bcb-a468-dce59b77cefa",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180810-WA0000.jpg?alt=media&token=b2b7c614-8a3b-49fd-9b38-21af2733d3fa",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180810-WA0005.jpg?alt=media&token=9466b5b1-222e-4cce-9f50-1b33ed8cd175",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180810-WA0008.jpg?alt=media&token=e9ec5b67-58dd-49f5-b7e0-658de1008143",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20180810-WA0011.jpg?alt=media&token=a9f6ee47-5ac4-444a-bb70-8854ea166e10",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20181129-WA0010.jpg?alt=media&token=57160697-0800-4bf7-be8b-aeffb1274f63",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190113-WA0004.jpg?alt=media&token=4f7a59d0-a312-48c9-857b-b46bfb46d754",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190225-WA0013.jpg?alt=media&token=a4afd9ba-c106-445d-be2d-b00e28149257",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190225-WA0015.jpg?alt=media&token=1c2224b6-7545-4e38-a76c-51228bbd1c2c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190227-WA0001.jpg?alt=media&token=a7baa739-55ec-404a-bfa9-680abd96e14a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190305-WA0000.jpg?alt=media&token=82b19ee1-38b8-4a06-b62d-6495e11a7cb3",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190310-WA0004.jpg?alt=media&token=52a2c94b-c482-44f6-9cff-fe42cc80b93a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190311-WA0003.jpg?alt=media&token=5735a007-e9b7-458a-a5ce-e23ab20eaf1f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190503-WA0005.jpg?alt=media&token=8b062077-ade7-42a9-8fc8-63c1b41f51fa",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190527-WA0002.jpg?alt=media&token=811b4bb8-b70e-4488-b771-dc41b67458d0",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190602-WA0004.jpg?alt=media&token=4938f4f3-436a-409f-8331-a9386c6e2cb1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190602-WA0006.jpg?alt=media&token=15aa9f72-d64c-4acf-a113-60da976a8c45",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190602-WA0007.jpg?alt=media&token=85628ee4-923b-42f4-9e7e-d5546cf21732",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190602-WA0010.jpg?alt=media&token=8e5ebce8-2735-4188-a4b7-8bc4898bc3a2",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190605-WA0011.jpg?alt=media&token=8141b858-992b-4e2e-b7b4-ca9f450613f6",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190605-WA0070.jpg?alt=media&token=49a52154-f5ae-425f-a3e6-7d4d0777e05e",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190615-WA0017.jpg?alt=media&token=c12c3def-4550-4efe-81b5-2dd8ee705270",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20190615-WA0022.jpg?alt=media&token=d584ecf1-730b-41cd-8a83-f4e5c984a374",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG-20200331-WA0004.jpg?alt=media&token=b4c53a90-af2b-4d65-afee-e180e68da315",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FIMG_0381.JPG?alt=media&token=a6dd7238-4345-4860-8551-70761bb78450",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FJPEG_20171223_115531.jpg?alt=media&token=403c857a-d88c-4494-b331-0beecb0c02bc",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2FJPEG_20180525_164548.jpg?alt=media&token=ff53f9ec-1d2a-49c7-8b14-d5964a0f9bd6",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2Fenes%20mutant.jpg?alt=media&token=1806f2a5-b8e0-4870-bb66-6e27e982d6d9",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2Fenes.png?alt=media&token=d02d7efd-1867-4fd4-95e1-ef1e004ccbbd",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FEnes%2Fimage.jpg?alt=media&token=94a7df1e-c3a5-4c8a-948e-7bfb98a0e3a2",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 35, 40),
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
