import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class videos extends StatelessWidget {
  const videos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Videolar",
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
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 0, 124, 97),
            ),
            child: Card(
              child: ListTile(
                  title: const Text("Darius'dan outclass"),
                  subtitle: const Text("Ahmet Hakan tarzı bir darius."),
                  leading: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  ),
                  onTap: () async {
                    var url =
                        "https://www.youtube.com/watch?v=DX8Wn4yYn4E&ab_channel=omergedik";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.blueAccent,
            ),
            child: Card(
              child: ListTile(
                  title: const Text("Worldwide Pyke"),
                  subtitle:
                      const Text("Enes'den dünya çapında bir pyke oyunu."),
                  leading: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  ),
                  onTap: () async {
                    var url =
                        "https://www.youtube.com/watch?v=jXYhlBBw33c&ab_channel=omergedik";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 127, 25, 223),
            ),
            child: Card(
              child: ListTile(
                  title: const Text("Ölü Taklidi Garen"),
                  subtitle: const Text("İhsan Eliaçık'dan efsane bir yemleme."),
                  leading: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  ),
                  onTap: () async {
                    var url =
                        "https://www.youtube.com/watch?v=58VBxVamMfE&ab_channel=omergedik";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 216, 50, 0),
            ),
            child: Card(
              child: ListTile(
                  title: const Text("Benim adım Hıdır elimden gelen budur"),
                  subtitle: const Text("Hıdırkai konuşturmuş"),
                  leading: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  ),
                  onTap: () async {
                    var url =
                        "https://www.youtube.com/watch?v=y06jWKtnqyo&ab_channel=AlexanderJosephine";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.lightGreen,
            ),
            child: Card(
              child: ListTile(
                  title: const Text("Alman pasaportuna sahip malphite"),
                  subtitle: const Text(
                      "Enes kardeşimden kör atılmış efsane bir ulti."),
                  leading: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  ),
                  onTap: () async {
                    var url =
                        "https://www.youtube.com/watch?v=lw9PRWWOPJM&ab_channel=EnesSubasi";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.blueAccent,
            ),
            child: Card(
              child: ListTile(
                  title: const Text("Rakan ile de bunu yapmazsın"),
                  subtitle: const Text(
                      "Çok fazla söze gerek yok. Bu adam bu işi yapıyor."),
                  leading: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  ),
                  onTap: () async {
                    var url =
                        "https://www.youtube.com/watch?v=L9AoUFZfocg&ab_channel=EnesSubasi";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.black,
            ),
            child: Card(
              child: ListTile(
                  title:
                      const Text("Bir de Malphite nasıl oynanmaz onu görelim."),
                  subtitle:
                      const Text("Enginin performansı olduğunu hatıralıyoruz."),
                  leading: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  ),
                  onTap: () async {
                    var url =
                        "https://www.youtube.com/watch?v=d8q5zITFV2c&ab_channel=H%C4%B1d%C4%B1rAliAytemur";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.grey,
            ),
            child: Card(
              child: ListTile(
                  title: const Text("Muhavvidler Tunuvası Finalin Son Maçı"),
                  subtitle: const Text("Güzel günlerdi. Eğlendik."),
                  leading: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  ),
                  onTap: () async {
                    var url =
                        "https://www.youtube.com/watch?v=AqPiD8qk6Rw&ab_channel=EnesSubasi";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.deepOrange,
            ),
            child: Card(
              child: ListTile(
                  title: const Text("Golden Shot."),
                  subtitle: const Text("Ömer kardeşimiz shacoyla tekliyor.mp4"),
                  leading: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  ),
                  onTap: () async {
                    var url =
                        "https://www.youtube.com/watch?v=vkD_fP0YIiM&ab_channel=AlexanderJosephine";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.orangeAccent,
            ),
            child: Card(
              child: ListTile(
                  title: const Text(
                      "Suriçi pyke konusunda kara büyüyle bağlandığına dair bir kanıt daha"),
                  subtitle:
                      const Text("Salih yapma oğlum şunu kendine yapma oğlum."),
                  leading: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  ),
                  onTap: () async {
                    var url =
                        "https://www.youtube.com/watch?v=kHRHE1oAcP0&ab_channel=omergedik";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.brown),
            child: Card(
              child: ListTile(
                  title: const Text("Berkayın baitlediğini iddia ettiği an"),
                  subtitle: const Text(
                      "Abicim bu adam oyunda da komünistler kadar başarılı"),
                  leading: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  ),
                  onTap: () async {
                    var url =
                        "https://www.youtube.com/watch?v=Ev_q5M8Ubmo&ab_channel=omergedik";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.lightBlue),
            child: Card(
              child: ListTile(
                  title: const Text("Kafayı taşlara vurmalık bir jarvan oyunu"),
                  subtitle: const Text("iş misin sipariş misin aq"),
                  leading: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  ),
                  onTap: () async {
                    var url =
                        "https://www.youtube.com/watch?v=vD7Y3vUGHpU&ab_channel=omergedik";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.pinkAccent),
            child: Card(
              child: ListTile(
                  title: const Text("Berkay'ın klasik cassi oyunları"),
                  subtitle: const Text(
                      "Adam casside bir efsane diyorum inanmıyorsunuz."),
                  leading: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  ),
                  onTap: () async {
                    var url =
                        "https://www.youtube.com/watch?v=_EPG9Q9lXAQ&ab_channel=omergedik";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  }),
            ),
          ),
        ]),
      ),
    );
  }
}
