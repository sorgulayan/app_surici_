import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class galleryYasar extends StatefulWidget {
  const galleryYasar({Key? key}) : super(key: key);

  @override
  State<galleryYasar> createState() => _galleryYasarState();
}

class _galleryYasarState extends State<galleryYasar> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2F060f0944-0c21-4570-b1d3-904aef84c7cb.jpg?alt=media&token=18ac6a71-80c5-4ab6-8678-efaf34ab916f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2F10419623_537116806420608_8376275244440909364_n.jpg?alt=media&token=2e15f476-3fa9-4809-888c-12b314c5249d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2F10628371_546647695467519_1148392849643738977_n.jpg?alt=media&token=9f9536b5-130e-4597-bd77-d322fb1b3e1d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2F11%20(1).png?alt=media&token=a993f549-58d3-4352-b753-ff724467b697",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2F123123123.jpg?alt=media&token=fbcc2fbe-aca5-47b1-8d18-286f36b645cc",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2F16831539_366273783758865_916600636_n.jpg?alt=media&token=6981337b-72f3-4807-a4d8-8685990b962a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2F17467941_381164725603104_389958043_n.jpg?alt=media&token=f20b3835-dd5a-4679-aeea-ab8f2f2a8224",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2F20170611_001312.jpg?alt=media&token=77f49cb5-5dfd-4ca3-99ea-c5d0f634c315",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2F20170718_002035.jpg?alt=media&token=39e9bab8-e2a5-45ca-a1c1-e3dc40da4421",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2F4.PNG?alt=media&token=9923dbab-1c51-4b8f-b5c4-b90ad14ee95f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2F5d2b376a-ab0a-4284-957a-f7ab00a12d90.jpg?alt=media&token=6ba54e10-d314-48e7-ad24-4b811c81787a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20170422-WA0016.jpg?alt=media&token=326c8dd7-349a-4587-b958-09f8d76b3f33",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20170930-WA0007.jpg?alt=media&token=cb60ba9f-0cb2-4560-9e2c-75d1a8044c2d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20171011-WA0007.jpg?alt=media&token=e4a13300-ff17-4c01-8e76-f39c831cb8b8",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180109-WA0004.jpg?alt=media&token=c9cc9725-53e5-4006-a99e-98ad4fe44aec",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180324-WA0004.jpg?alt=media&token=183004fe-f48b-46bc-a2fb-44361320abae",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180402-WA0007.jpg?alt=media&token=692990b7-adec-44d8-bab1-84f944c64bd1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180407-WA0001.jpg?alt=media&token=1cc6c0c3-2477-48d4-87f8-c610fcad49b8",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180613-WA0004.jpg?alt=media&token=360b45d4-05b1-4a79-bbbd-e8b3b05df1be",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180613-WA0020.jpg?alt=media&token=fb0a0736-4197-4948-9fe6-5c0e29ef5faf",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180613-WA0029.jpg?alt=media&token=3a786dab-4e13-48f3-99b4-27dca51bdf63",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180613-WA0067.jpg?alt=media&token=b653988c-efbe-4912-b9c9-55ecc7dca1dd",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180622-WA0005.jpg?alt=media&token=e1c19502-82a5-4922-a591-90e266eb8922",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180623-WA0009.jpg?alt=media&token=460dc05e-076f-4b2e-9752-759e041840db",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180722-WA0011.jpg?alt=media&token=51f0eac8-c467-4dd4-91d1-f2f625cf7209",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180801-WA0009.jpg?alt=media&token=3d6afb75-2edd-4b46-b71c-68c95b01262d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180801-WA0019.jpg?alt=media&token=559d3eda-e2a1-4155-af2e-80854241a1ac",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180815-WA0000.jpg?alt=media&token=5414cb93-d675-4012-8492-0ec0ebadb33a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180826-WA0013.jpg?alt=media&token=41e5f39f-92d9-42a3-b088-332f7abcd7cf",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180904-WA0003.jpg?alt=media&token=a480b934-5c23-4f88-8b0f-bbd16fbb81b1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180905-WA0000.jpg?alt=media&token=6b8e616e-4513-4e35-af02-687f1c444f8c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180905-WA0001.jpg?alt=media&token=5288958f-db42-44d2-a1ae-7aaf38d8e56c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180907-WA0003.jpg?alt=media&token=83dc0e02-3834-437f-998c-2cb24e8a16a6",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180919-WA0006.jpg?alt=media&token=986904d1-8c19-4d26-b59e-8f679e4b8591",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180919-WA0007.jpg?alt=media&token=b69daf1e-2a81-467f-b074-d1f69b9137a1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180920-WA0000.jpg?alt=media&token=d558450e-ec52-4d3e-8991-6b73a1e83f3a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180922-WA0007.jpg?alt=media&token=45da702f-7d5a-446e-93ec-98290d96af3a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20180930-WA0000.jpg?alt=media&token=840875e3-a28a-454c-a9d7-5c76183ea75d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20181007-WA0010.jpg?alt=media&token=57d0c4a1-8402-446f-90db-13b01d8f8599",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20181026-WA0000.jpg?alt=media&token=e92d73ae-a5fe-468b-9b9c-beaa8140d261",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20181202-WA0008.jpg?alt=media&token=464e798d-d226-4a41-950a-a99b2ef5e25a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20181206-WA0001.jpg?alt=media&token=d4e9ed80-660d-4394-a706-528d353e784b",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20190116-WA0001.jpg?alt=media&token=581723b2-599b-441c-92ea-1ecdcae7b361",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20190131-WA0003.jpg?alt=media&token=0c6aafd2-ba83-4375-9776-3a951ba44a58",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20190308-WA0017.jpg?alt=media&token=8aa9da71-35e0-4ae4-83b0-cd5e25ec96c3",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20190317-WA0011.jpg?alt=media&token=ab7cf44b-709f-4ea1-b299-81bc450e3f5c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20190327-WA0000.jpg?alt=media&token=b1719367-00a6-47d7-9770-a1734c44323d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20190930-WA0016.jpg?alt=media&token=769372a6-9f09-4f15-9e57-d6ff1f6a8f49",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20190930-WA0017.jpg?alt=media&token=24d9b27f-0d67-4ce1-8b8d-a1074c179c2b",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20190930-WA0019.jpg?alt=media&token=c302852d-8f84-4069-81a9-44215ec6a1b3",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20190930-WA0020.jpg?alt=media&token=5850ac74-8701-4bbf-b703-df6a725714fb",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20190930-WA0021.jpg?alt=media&token=7f9b0f2d-2152-4d23-a9bd-001248243b22",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20190930-WA0023.jpg?alt=media&token=a83e7dbc-40a1-41ed-969d-81166e0c28ca",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20190930-WA0024.jpg?alt=media&token=7e59f3ae-c86c-4ec2-a5cf-0e3f2fe730e8",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20191017-WA0005.jpg?alt=media&token=a976eff9-d62b-48c9-ae82-d42f29212b88",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20200404-WA0022.jpg?alt=media&token=5577437a-4280-4132-9b7d-d9237e614b72",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20200407-WA0007.jpg?alt=media&token=d193d586-7366-48f3-8bbf-bf655ef59e44",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20200407-WA0008.jpg?alt=media&token=9f4e386f-3c35-4964-a6a4-8c050792ce73",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FIMG-20200407-WA0010.jpg?alt=media&token=4b4c31cd-0ac6-424d-b9d4-9eba553e5274",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FWIN_20170803_23_33_52_Pro.jpg?alt=media&token=571a15f2-2e0d-4d99-9a17-15d6ec79ffd2",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2Faddsa.jpg?alt=media&token=76d92140-b1de-4b61-8732-96bfb6aaec75",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2Findex1.jpg?alt=media&token=0d56e687-1452-4f13-9aae-123258d9ac26",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2Fsa.jpg?alt=media&token=9f43d912-b8aa-4a7b-978f-c50967765dd0",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2Fya%C5%9Fak%20kolsuzz.jpg?alt=media&token=2664343b-8ca9-4218-895f-713645806383",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FYa%C5%9Far%2FWIN_20170815_03_18_42_Pro.jpg?alt=media&token=39c09524-db41-4307-bb3b-c9603cbc5837",
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
