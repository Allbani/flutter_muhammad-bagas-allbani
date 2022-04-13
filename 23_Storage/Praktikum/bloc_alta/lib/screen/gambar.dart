import 'package:flutter/material.dart';

class GambarScreen extends StatefulWidget {
  const GambarScreen({Key? key}) : super(key: key);

  @override
  State<GambarScreen> createState() => _GambarScreenState();
}

class _GambarScreenState extends State<GambarScreen> {
  bool size = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gambar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  size = !size;
                });
              },
              child: AnimatedContainer(
                width: size ? 200 : 100,
                height: size ? 200 : 100,
                color: Colors.green,
                duration: const Duration(seconds: 3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
