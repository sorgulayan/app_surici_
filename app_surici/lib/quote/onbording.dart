import 'package:app_surici/newHomePage/myHomePage.dart';
import 'package:flutter/material.dart';
import 'package:app_surici/quote/quoteData.dart';
import 'package:app_surici/quote/quote_page.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Replikler",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const MyHomePage()),
                  (Route<dynamic> route) => false);
            }),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      const SizedBox(height: 150),
                      Text(
                        contents[i].title,
                        style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 82, 82, 82),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
              (index) => buildDot(index, context),
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(40),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (currentIndex == contents.length) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const QuotePage(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration: const Duration(milliseconds: 275),
                  curve: Curves.easeIn,
                );
              },
              child: Text(currentIndex == contents.length
                  ? "Continue"
                  : "Sonraki repliğe geç"),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 10 : 0.9,
      margin: const EdgeInsets.only(right: 1.1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
