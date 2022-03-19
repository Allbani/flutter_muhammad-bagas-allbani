import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/pp.png',
          width: 70,
          height: 70,
        ),
        const SizedBox(
          width: 14,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Super Hero',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Boboboy',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Lihat ini!',
              style: TextStyle(fontSize: 14, color: Colors.blueGrey),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 175),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    '18:00',
                    style: TextStyle(color: CupertinoColors.inactiveGray),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 40,
                height: 20,
                decoration: const BoxDecoration(
                  color: CupertinoColors.inactiveGray,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(500), right: Radius.circular(500)),
                ),
                child: const Center(
                  child: Text(
                    '371',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
