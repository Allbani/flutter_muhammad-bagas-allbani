import 'package:flutter/material.dart';
import 'package:secion15/pages/taks1.dart';

void main() => runApp(const Section15());

class Section15 extends StatelessWidget {
  const Section15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Taks1(),
    );
  }
}
