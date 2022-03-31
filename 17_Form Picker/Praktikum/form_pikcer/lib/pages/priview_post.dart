import 'dart:io';

import 'package:flutter/material.dart';

class PriviewPost extends StatelessWidget {
  const PriviewPost({Key? key, required this.gambar, required this.date, required this.text, this.warna, }) : super(key: key);

  final String gambar;
  final String date;
  final warna;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Priview Post'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Image.file(
              File(gambar),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Text(
                  'Published: $date',
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 60,
                ),
                const Text(
                  'Color :',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: warna,
                    shape: BoxShape.circle
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(18),
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
