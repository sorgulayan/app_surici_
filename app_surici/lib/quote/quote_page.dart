import 'package:flutter/material.dart';
import 'package:app_surici/quote/onbording.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onbording(),
    );
  }
}
