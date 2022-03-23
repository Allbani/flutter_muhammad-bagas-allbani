import 'package:flutter/material.dart';

class GridConten extends StatelessWidget {
  final IconData iconImg;

  // ignore: use_key_in_widget_constructors
  const GridConten({required this.iconImg});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(iconImg),
        )
      ],
    );
  }
}