import 'package:flutter/material.dart';
import 'package:section12/pages/home.dart';

void main() => runApp(const Sction12());

class Sction12 extends StatelessWidget {
  const Sction12({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Home(),
    );
  }
}