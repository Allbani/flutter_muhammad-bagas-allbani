import 'package:flutter/material.dart';

class ContacWidget extends StatelessWidget {
  const ContacWidget({Key? key, required this.imageUrl, required this.name, required this.number}) : super(key: key);

  final String imageUrl;
  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              number,
              style: const TextStyle(color: Colors.grey),
            )
          ],
        )
      ],
    );
  }
}
