import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArchivePage extends StatelessWidget {
  const ArchivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Arşiv",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.lightGreen,
              ),
              child: ExpansionTile(
                collapsedTextColor: Colors
                    .black, // if didn't click ! set title text's color to white
                title: const Text("Film/Dizi Önerileri"),
                leading: const Icon(
                  Icons.book,
                  color: Colors.black,
                ),
                textColor:
                    Colors.white, //if clicked !set title text's color to red
                children: [
                  ExpansionTile(
                    title: const Text("Dizi"),
                    children: [
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Fyre'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Star is Born'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('True Detective'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Roma'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Childhoods End'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('11.22.63'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('The Cry'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Unorthodox'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('The 7 Lives of Lea'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Bodyguard'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Manhunt: Unabomber'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Kalifat'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('True Story'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Dropout'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Lost Room'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Shining Girls'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Norsemen'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Tudorlar'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('The Pacific'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('The Borgias'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Vikings'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Bonnie & Clyde'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Houdini'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('The Last Kingdom'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Narcos'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Versailles'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Medici’s: Masters of Florence'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Genius'),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: const Text("Film"),
                    children: [
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        onTap: () {},
                        title: const Text('Upgrade'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Gattaca'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Who am I'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('The Revenant (Diriliş)'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Coco'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Özgürlük yolu'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Zamanda aşk'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Zindan adası'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Aşka yolculuk'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Not defteri'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Akıl oyunları'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('12 kızgın adam'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Bay evet'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Jungle'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Kingsman'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Uzay yolcuları'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Muhteşem gatsby'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('The hateful eights'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Theaory of everythink'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Phenomenon'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Son cadı çırası'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Erremanteri'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Demir maskeli adam'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Terabithiç köprüsü'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Yasak krallık'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('47 ronin'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Panın labirenti'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Sessiz bir yer'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Rampage büyük yıkım'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Dont Breathe'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Bohemian Rhapsody'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Başlat: Ready Player One'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Swiss Army Man'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Smokin’ Aces'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Parazit'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Manchester by the sea'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Hardcore Henry'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('10 CoverField Lane'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('The Nice Guys'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Warcraft'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('The Square'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('7 Boxes'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Beasts Of No Nation'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Columbus'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Manchester by the sea'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('When They See Us'),
                        textColor: Colors.white,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Swiss Army Man'),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const ExpansionTile(
                    title: Text("Belgesel"),
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('100 Yılın İtirafları'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Zamanın Ruhu'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Home (Yuva)'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Gece ve Sis('),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Evrenin Ucuna Yolculuk (Journey)'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text(
                            'Evrenin Harikaları (Wonders of the Universe)'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('The Universe'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('İnsan Gezegeni (Human Planet)'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Yeryüzü (planet earth)'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Çıkışlar Hediyelik Eşya Dükkanından'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Gıda, Ltd. (Food, INC)'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Uygunsuz Gerçek'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Kapitalizm: Bir Aşk Hikayesi'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Human'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('The War You Dont See (yıkımlar savaşlar)'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('Inhabit (yaşam üzerine)'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('The Lottery of Birth (özgürlük)'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text(
                            'Zeitgeist: Moving Forward (bankalar ve sistem)'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('The Corporation (şirketler)'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title:
                            Text('Inequality For All  (ekonomik eşitsizlik)'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('War Made Easy'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text('End: Civ (insanlığın zulmü üzerine)'),
                        textColor: Colors.white,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        title: Text(
                            'Beyond Elections:Redefining Democracy in the Americas (demokrasi nedir)'),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.amber,
              ),
              child: ExpansionTile(
                collapsedTextColor: Colors
                    .black, // if didn't click ! set title text's color to white
                title: const Text("Oyun"),
                leading: const Icon(
                  Icons.book,
                  color: Colors.black,
                ),
                textColor:
                    Colors.white, //if clicked !set title text's color to red
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('L.A Noire'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('A plague tale'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Observer'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Stories Untold'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Sniper Elite 4'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Hacknet'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Protottype'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('The saboteur'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Scarface'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Wanted : Weapons of fate'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Acting Lessons'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Mass Effect 1-2'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Kotor'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Dragon Age Origins'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Mass Effect 1-2'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Papers, Please'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Spec Ops Serisi'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Life is Strange 1-2'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Grounded'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('No Mans Sky'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Zarya-1 Şeytanın Şafağı'),
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.lightBlueAccent,
              ),
              child: ExpansionTile(
                collapsedTextColor: Colors
                    .black, // if didn't click ! set title text's color to white
                title: const Text("Yararlı Siteler"),
                leading: const Icon(
                  Icons.book,
                  color: Colors.black,
                ),
                textColor:
                    Colors.white, //if clicked !set title text's color to red
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Tübitakın tüm yayın ve dergilerinin arşivi'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url =
                              "https://services.tubitak.gov.tr/edergi/edergi.htm;jsessionid=I5pf40GMI3SGFzdU0B8EP73b";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Milli kütüphane arşivindeki tüm taş plaklara ses dosyası olarak ulaşabileceğiniz bir platform'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url =
                              "http://www.millikutuphane.gov.tr/page/Katalog-Tarama";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Nasanın uzay ile ilgili keşiflerini ve fotoğraflarını bulabileceğiniz online arşivi'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "https://images.nasa.gov/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'ABD meclis kütüphanesi, 1800-2020 yılları arasında dünya üzerinde çekilmiş milyonlarca fotoğrafa ulaşabilirsiniz.'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "https://www.loc.gov/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Yüz binlerce resim, çizim, karikatür ve görseli konularına göre arayabileceğiniz büyük bir arşiv'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url =
                              "https://www.europeana.eu/en/collections/topic/190-art";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'İBBye ait taksim kütüphanesindeki binlerce esere ücretsiz olarak ulaşıp, okuyabilirsiniz'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url =
                              "https://ataturkkitapligi.ibb.gov.tr/yordambt/yordam.php?aTumu=";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title:
                        const Text('Sultan II. Abdulhamitin fotoğraf arşivi'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url =
                              "http://katalog.istanbul.edu.tr/client/tr_TR/default_tr/search/results?te=&lm=IUNEKABDUL";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Geçmişten bugüne çizilmiş tüm haritalara ulaşabileceğiniz bir arşiv'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "https://www.davidrumsey.com/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Birleşmiş milletler bünyesinde yayınlanan tüm eserlere ulaşabileceğiniz bir arşiv'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "https://www.un-ilibrary.org/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Balkanlardaki Osmanlı eserlerinin olduğu fotoğraf arşivi'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url =
                              "http://www.nit-istanbul.org/kielarchive/index.php";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Türkiyedeki ve Dünyadaki tüm yer isimlerinin tarihi, eski adları ve değişimlerini inceleyebileceğiniz bir platform'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "https://nisanyanmap.com/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Harvard üniversitesinden sertifika alabileceğiniz 55 alanda ücretsiz online kurslar'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "https://online-learning.harvard.edu/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Türkiyede yayınlanan ve yayınlanmış olan gazetelerin geçmişten günümüze tüm sayılarına ulaşabileceğiniz bir platform'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url =
                              "http://nek.istanbul.edu.tr:4444/ekos/gazete/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Çekilmiş tüm filmlerin çarpıcı sahnelerinin olduğu bir arşiv'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "https://film-grab.com/tag/screenshots/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'New york metropolitan operası, her gün eski bir performansı ücretsiz olarak erişime açıyor'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "https://www.metopera.org/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Berlin filarmoni orkestrasının tüm konser kayıtları'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url =
                              "https://www.berliner-philharmoniker.de/en/titelgeschichten/20192020/the-berlin-phil-series/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Telifsiz film, kitap, makale, fotoğraf arşivi'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "https://www.openculture.com/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Antik yunan, mısır, çin ve asya üzerine yazılmış binlerce esere ulaşabileceğiniz bir platform'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url =
                              "https://sanskritdocuments.org/scannedbooks/asiallpdfs.html";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Marmara Üniversitesindeki nadide eserlere online olarak ulaşabileceğiniz platform'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url =
                              "https://katalog.marmara.edu.tr/yordambt/yordam.php";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Dünyanın her yerinden yüzlerce üniversitenin ortak çevrimiçi kütüphanesi'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url =
                              "https://www.hathitrust.org/digital_library";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Cambridge Üniversitesine ait bine yakın ders kitabınına ulaşabileceğiniz bir platform'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url =
                              "https://www.cambridge.org/core/what-we-publish/textbooks";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Her dilden birçok konuda makalelere, eserlere ulaşabileceğiniz dünyanın en büyük online kütüphanelerinden biri'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "http://lib.rus.ec/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'telif süresi dolmuş tüm eserlere e- kitap olarak ulaşabileceğiniz bir site'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Türkiyede 1950 öncesi çıkan sinema dergileri arşivi'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "http://gutenberg.org/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text('Ücretsiz sesli kitap arşivi'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text(
                        'Türkiyede 1950 öncesi çıkan sinema dergileri arşivi'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url =
                              "https://www.tsa.org.tr/tr/arama/detaylidergi/1/?search_keyword=&search_type=1&search_magazine_year_first=0&search_magazine_year_last=1949&magazine_medium_types=&search_languages=1";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text('ABD ulusal kütüphanesi'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "https://www.nlm.nih.gov/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text('ücretsiz sesli kitap arşivi'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "https://konusankitaplik.mkutup.gov.tr/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    title: const Text('Türkiye cumhuriyeti devlet arşivleri'),
                    textColor: Colors.black,
                    trailing: IconButton(
                        icon: const Icon(Icons.insert_link),
                        iconSize: 35.0,
                        onPressed: () async {
                          var url = "http://www.devletarsivleri.gov.tr/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        }),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.redAccent,
              ),
              child: ExpansionTile(
                collapsedTextColor: Colors
                    .black, // if didn't click ! set title text's color to white
                title: const Text("Kitap"),
                leading: const Icon(
                  Icons.book,
                  color: Colors.black,
                ),
                textColor:
                    Colors.white, //if clicked !set title text's color to red
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Suç Ve Ceza'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Dünya Tarihi 101'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Sherlok Holmes Gölge Koleksiyonu'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Çin İşkencesi'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Cesur Yeni Dünya'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Su Kürü - Sophie Mackintosh'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Son Tiryaki - Müfit Özdeş'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Hayalperest Ölünün Şarkıları'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Bedava Müzik - Stephen Witt'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Tekme Tokatlı Şehir Rehberi'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Ray Bradbury - Fahrenheit 451'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Farabi - El Medinetül Fazıla'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('George Orwell - 1984'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('George Orwell - Hayvan Çiftliği'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title:
                        const Text('İlber Ortaylı - Bir Ömür Nasıl Yaşanır?'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Halil İnalcık - Osmanlı'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Hermann Hesse - Siddhartha'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('İbn-i Tufeyl - Hayy ibn Yakzan'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Aldous Huxley - Cesur Yeni Dünya'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('İvan Turgenyev - Babalar ve Oğullar'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Stefan Zweig - Gömülü Şamdan'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Stefan Zweig - Satranç'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Gregory Samsa - Dönüşüm'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text(
                        'Grigory Petrow - Beyaz Zambaklar Ülkesinde'),
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                    onTap: () {},
                    title: const Text('Stephan Hawking - Zamanın Kısa Tarihi'),
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
