import 'package:flutter/material.dart';
import 'package:section13/badge.dart';

void main() => runApp(const Section13());

class Section13 extends StatefulWidget {
  const Section13({Key? key}) : super(key: key);

  @override
  State<Section13> createState() => _Section13State();
}

class _Section13State extends State<Section13> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BadgeScreen();
  }
}
