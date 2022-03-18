import 'package:flutter/cupertino.dart';
import 'package:sction_11/page/home.dart';

void main() => runApp(const Cupertino());

class Cupertino extends StatelessWidget {
  const Cupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
