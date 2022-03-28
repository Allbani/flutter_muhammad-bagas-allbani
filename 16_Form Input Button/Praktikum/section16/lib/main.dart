import 'package:flutter/material.dart';
import 'package:section16/page/contac.dart';

void main() => runApp(const Section16());

class Section16 extends StatelessWidget {
  const Section16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContacPage()
    );
  }
}
