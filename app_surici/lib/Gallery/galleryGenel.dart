import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class galleryGenel extends StatefulWidget {
  const galleryGenel({Key? key}) : super(key: key);

  @override
  State<galleryGenel> createState() => _galleryGenelState();
}

class _galleryGenelState extends State<galleryGenel> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/9b18772e-ac1b-4bb2-84c9-15a43d896201.jpg?alt=media&token=0e92df9d-790c-4f14-9902-883f45b6a9a6",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2F172526489_204471148105736_4417256563375069176_n.jpg?alt=media&token=cb7a628a-9f07-4e48-bb21-4c50a79c08b7",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2F20170916_142949.jpg?alt=media&token=3ecc4082-25f2-4498-9c40-35d09174fe47",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2F20170920_205819.jpg?alt=media&token=d5c63401-58bd-4251-8062-cebf4da069ed",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2F11.png?alt=media&token=7bd3b711-6002-4bcb-b38a-587bfeea7de6",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2F234234234234.png?alt=media&token=0be54f94-a03f-4ca6-9619-059b8b252e12",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2F29572924_1971837296478104_2325649356265966787_n.jpg?alt=media&token=20cd382e-99cf-4a08-83ae-625d46bdf767",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2F3dad3ca9-e680-4289-a9fc-4e1a7dec9e37.jpg?alt=media&token=a3d006bf-d817-4004-b833-604190016c4f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2F41c395f9-7735-4d7e-a77e-eac172b4da0d.jpg?alt=media&token=61274548-90c8-478a-bff7-e3abccb7b78f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20170115-WA0015.jpg?alt=media&token=9eb21d24-3375-4695-a629-a61895f06ec4",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180307-WA0048.jpg?alt=media&token=33d2348c-1729-44bd-a87e-84686e3f9fc1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180307-WA0120.jpg?alt=media&token=7c181e30-0e41-409f-8262-59d53e5bbea2",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180307-WA0139.jpg?alt=media&token=ba8f675f-be3f-40a8-8369-4c864178b772",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180330-WA0000.jpg?alt=media&token=2d2264b2-0983-4cee-a976-ac5ddad9f917",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180330-WA0025.jpg?alt=media&token=b32452d6-a930-4c8d-adab-42f1b34a2c77",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180330-WA0032.jpg?alt=media&token=1c5aa271-9835-49ff-8385-60ac5ee12138",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180428-WA0005.jpg?alt=media&token=6ae993b4-506c-4861-b820-861d2ef3cd89",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180517-WA0033.jpg?alt=media&token=8b7ec737-28ce-415c-9ed8-0eb0b2851e14",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180606-WA0025.jpg?alt=media&token=6f2a1619-1e6b-4280-bc39-bd8ba1c38863",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180606-WA0027.jpg?alt=media&token=64009b02-3153-4e79-b191-f8499049a528",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180620-WA0007.jpg?alt=media&token=4fe15c1e-a34f-47cc-99b7-7b2ec3dd4cb1",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180620-WA0018.jpg?alt=media&token=0406ae03-8ae1-4003-b1ac-cfe1ec6ba6f6",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180620-WA0020.jpg?alt=media&token=0d71408d-d529-4bb7-9a45-4d7160733e0d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180620-WA0021.jpg?alt=media&token=089909fb-cd77-4a8e-9ee0-780ade66f382",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180719-WA0004.jpg?alt=media&token=64140673-03e6-44b3-a25a-5673d19ba527",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180721-WA0000.jpg?alt=media&token=c84a1a28-03a4-41cc-84f3-3c4a167a336f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180810-WA0004.jpg?alt=media&token=7045a38d-684c-4d73-a58a-e25e46c99aef",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180811-WA0019.jpg?alt=media&token=b0245022-2d4d-4c4a-9f30-f00182a87887",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180813-WA0015.jpg?alt=media&token=d92d5bba-ebca-4a0b-98be-f1d5d1bc7035",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180818-WA0001.jpg?alt=media&token=b3d7e77d-cd8f-4f61-9fa3-2b7700eb5eeb",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180818-WA0011.jpg?alt=media&token=f38cfc0b-98d9-4edf-9e35-0d5806254245",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180819-WA0021.jpg?alt=media&token=bea534d2-ad8c-4fdd-a0b0-ba1709c23045",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180820-WA0007.jpg?alt=media&token=50961cf6-0c1d-4005-9986-66894a0bf3a2",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180820-WA0006.jpg?alt=media&token=132de9c5-af58-4b00-89e6-6aaf16301868",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180820-WA0009.jpg?alt=media&token=70531d4d-10fa-4da8-8499-adb2b17b374e",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180820-WA0010.jpg?alt=media&token=69d53b6e-f8c5-412d-9859-0ce51f19d91d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180820-WA0015.jpg?alt=media&token=a37fed22-ca7a-4ca3-801f-ee59d9490a4c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180819-WA0021.jpg?alt=media&token=bea534d2-ad8c-4fdd-a0b0-ba1709c23045",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180820-WA0003.jpg?alt=media&token=875d986c-ca71-4c24-b5e6-2b4fa56aa920",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180820-WA0006.jpg?alt=media&token=132de9c5-af58-4b00-89e6-6aaf16301868",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180820-WA0009.jpg?alt=media&token=70531d4d-10fa-4da8-8499-adb2b17b374e",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180820-WA0010.jpg?alt=media&token=69d53b6e-f8c5-412d-9859-0ce51f19d91d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180820-WA0015.jpg?alt=media&token=a37fed22-ca7a-4ca3-801f-ee59d9490a4c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180822-WA0008.jpeg?alt=media&token=6de3be42-8cbc-4511-afc9-f18905f59da3",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180822-WA0010.jpg?alt=media&token=581f5d4a-203a-481d-9791-3eb24815d878",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180829-WA0004.jpg?alt=media&token=623692df-db2a-4b61-83b6-470c32723fdb",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180906-WA0002.jpg?alt=media&token=d9b3a6a3-ca06-4c18-b83e-f8a8f793a9e3",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180906-WA0004.jpg?alt=media&token=eb5025ff-ae48-42a3-858e-b9f29c2ad2d4",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180910-WA0012.jpg?alt=media&token=b3e2dc9a-e29a-433a-bca5-42752caf4773",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180918-WA0004.jpg?alt=media&token=ebab22d4-0fd1-4365-ba4a-95ea97cfcc18",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180927-WA0008.jpg?alt=media&token=ac078187-61ab-41ba-91fa-2606ff3fad14",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180927-WA0009.jpg?alt=media&token=54f3704b-ec69-4225-871e-3c14c99bd06e",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20180929-WA0001.jpg?alt=media&token=1e6b1747-b81b-470c-95cb-171f0147fa64",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20181018-WA0004.jpg?alt=media&token=bf1a08c2-f456-4030-9f6b-fefe6fc949bb",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20181018-WA0005.jpg?alt=media&token=0cceb7c7-f0b4-40ca-8367-4ed36bfdfec5",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20181022-WA0003.jpg?alt=media&token=885d674f-dc24-4438-aa95-527c783ee4d9",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20181025-WA0003.jpg?alt=media&token=65f8bf8c-9cb7-42c1-972c-fb355df99c80",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20181028-WA0015.jpg?alt=media&token=750984cd-2e4e-4158-a234-ddc7341546b7",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20181101-WA0004.jpg?alt=media&token=3b1cfe7d-f6c2-418f-a7a0-e35eecb6068e",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20181101-WA0005.jpg?alt=media&token=8b686ec6-beef-4aec-93f6-3156e862b4bc",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20181101-WA0006.jpg?alt=media&token=f2a9f336-21df-4ddc-903b-31b1bccf2e05",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20181124-WA0021.jpg?alt=media&token=8801adbd-c705-41b0-868d-1485d4a7ea92",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20190620-WA0004.jpg?alt=media&token=176d7f6e-d630-4ba5-bb54-c0204f7a5885",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20190620-WA0007.jpg?alt=media&token=744e6581-a5cd-491e-98d7-e8f8ea4d2743",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20190624-WA0002.jpg?alt=media&token=49a6f4c3-761f-4f89-bc0f-9cc05f11ef5f",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20190731-WA0000.jpg?alt=media&token=624ff505-eb30-4142-a75d-146be04dee50",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20190907-WA0000.jpg?alt=media&token=3877d38c-5a5d-4583-9365-dda1dc4064aa",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20190930-WA0006.jpg?alt=media&token=0ce66a0b-8f44-48e5-8203-3326f54ce57b",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20190930-WA0007.jpg?alt=media&token=1819fb88-ab54-4c26-a924-5f2df7a119f2",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20190930-WA0027.jpg?alt=media&token=fdabff4d-1762-4d57-b9cc-d8c3a78440e2",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20191209-WA0014.jpg?alt=media&token=79d4abb1-32c8-424f-a141-bc6c3ed1807b",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20191214-WA0011.jpg?alt=media&token=25cee64a-e5c1-49eb-8946-a90bdea300b0",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20191214-WA0024.jpg?alt=media&token=f0b09358-9ab3-4732-a59a-43a3fae9bba8",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20200121-WA0003.jpg?alt=media&token=134e1d38-b211-40c0-999c-998199bb6b80",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20200317-WA0007.jpg?alt=media&token=6409a621-cb25-4646-91d7-cee6e267ec79",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20200319-WA0032.jpg?alt=media&token=8be03a87-cd4d-401b-86f5-2ebfbeddf247",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG-20200408-WA0000.jpg?alt=media&token=43096c73-2be8-4fd1-8754-482c0066151b",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG_20180112_013152.jpg?alt=media&token=225b8ae5-1ef1-461a-adc2-3634374f42df",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG_20181017_235313_515.jpg?alt=media&token=8148d9da-d966-45cc-ad99-137b885a84ec",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG_20191122_194313_268.jpg?alt=media&token=d2df822d-e36e-4b4d-9543-dcf1b5b582d0",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG_20191122_231224_654.jpg?alt=media&token=2c9b3db1-78b8-489b-aee4-b72c7e6e4fc6",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG_20191123_140340_797.jpg?alt=media&token=d8d2bc71-3c9e-4abd-9a21-870bbb4c4feb",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FIMG_2102.JPG?alt=media&token=977913c9-f699-4454-93d6-031b9db89e10",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FOcalan.png?alt=media&token=d61e4b16-2ddb-4357-9bcb-e9902dbcd206",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2FWhatsApp_Image_2017-09-21_at_20.53.50.jpeg?alt=media&token=ab596a9c-1112-43f6-b702-657b8ed6e5bf",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fa4de40ec-7d28-47f1-89ae-59f83d0fed70.jpg?alt=media&token=1e3bade9-8633-4b93-998a-01375a5dc538",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fahmet%20b%C4%B1y%C4%B1k%20sar%C4%B1k.jpg?alt=media&token=d98f07bb-3b6c-4668-8b79-d27305741518",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fahmet%20sar%C4%B1k.jpg?alt=media&token=6c0d79fb-2a04-4eb0-98f9-bf3bb007b31a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Falpler.jpg?alt=media&token=065881d2-e623-4b0c-a7ac-0099ee99d4b0",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fc5bf9202-2b08-44c9-b12f-9ffa8b331940.jpg?alt=media&token=eb362d4f-0d66-4cac-be52-99e7fa15ea8a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fcihangir%20erdem.jpg?alt=media&token=9dbe4ed9-f5ca-496d-8f83-a458fa166b14",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fd7e6b414-aa60-483f-a04c-f1b3a5ec317f.jpg?alt=media&token=169dc2a2-6790-4e03-a510-15458bc04bc7",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Femre.d.jpg?alt=media&token=82d48904-9654-4f00-95ba-9c1ee889e1ca",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Femre.jpg?alt=media&token=0dce271c-9e09-41ff-b62e-31d3be7ec9ef",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Femree.jpg?alt=media&token=3287d062-2000-4ad6-b528-4404a7b219e7",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fhaktan.jpg?alt=media&token=9f3a6188-813c-49ca-baec-7e4691bfd7ea",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fimage00.jpg?alt=media&token=8eb8fa18-aa34-4275-bae3-651f32f08bf9",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fsisko111.jpg?alt=media&token=f4085e80-cb43-4738-9c83-07541cf61434",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Ftayt.jpg?alt=media&token=75f95ce3-b4a1-4569-9f8a-388e213c0545",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fyi%C4%9Fit.jpg?alt=media&token=82cdfa1c-60ee-45a0-965c-5f0b8240eeed",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(2).jpg?alt=media&token=4ea1ee68-8b35-4046-ba9c-548381244d02",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(5).png?alt=media&token=4df4c909-22ef-401f-adc8-f679c601085d",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(2).png?alt=media&token=25d3a78a-dd39-4d2b-b214-61987c193fd2",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(1).png?alt=media&token=832f41f2-2668-41b6-a1bc-aff3202b8b29",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(3).jpg?alt=media&token=b3871a26-17f3-4f4e-8a82-8323c7951e9a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(7).png?alt=media&token=7baefb0a-ce84-4ebc-af30-ddfe87e69edb",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(6).jpg?alt=media&token=5d09154f-3049-4294-8e7c-2cb18c73ef54",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(8).png?alt=media&token=4bea824f-d7ef-4644-98d4-cf8ba300f5fc",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(10).jpg?alt=media&token=dbeff379-348e-4b0b-aec3-8abdc7f8c020",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(9).jpg?alt=media&token=288a73d9-418c-49f8-94c6-dac275a4a79a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(6).png?alt=media&token=57bf864d-4334-4c13-9cd8-d8acf5acc6cc",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(7).jpg?alt=media&token=7a02615e-feeb-4073-a39f-58dbc40ffe5a",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(13).jpg?alt=media&token=8a570b5f-0e04-4cf3-84e2-7fa51afbf90c",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(5).jpg?alt=media&token=0b593d35-3382-45b4-a933-b825ba251036",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(5).jpg?alt=media&token=0b593d35-3382-45b4-a933-b825ba251036",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(11).jpg?alt=media&token=691f7b25-7d1c-418a-b136-b4dbe9676604",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(4).png?alt=media&token=8086068a-1f12-4167-8ef0-5671876d480b",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(4).jpg?alt=media&token=b8b79afa-f3d6-4be8-8d97-22cbd71f78cd",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(3).png?alt=media&token=0f2c7892-8588-4879-806d-35826023a535",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(1).jpg?alt=media&token=ef6fda3b-7de3-4c5e-83c2-1e9c97d774bf",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(1).jpg?alt=media&token=ef6fda3b-7de3-4c5e-83c2-1e9c97d774bf",
    "https://firebasestorage.googleapis.com/v0/b/suriciapp-e6d83.appspot.com/o/gallery%2FGenel%2Fgenelll23%20(8).jpg?alt=media&token=071b0a71-cede-4f98-9d17-134a9ec905ba",
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
                    aspectRatio: 1 / 1,
                    height: 275,
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
