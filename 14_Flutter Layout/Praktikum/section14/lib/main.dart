import 'package:flutter/material.dart';
import 'package:section14/pages/home.dart';

void main() => runApp(Section14());

class Section14 extends StatelessWidget {
  const Section14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}