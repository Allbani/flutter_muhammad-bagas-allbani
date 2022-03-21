import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'barcode.dart';

class BadgeScreen extends StatelessWidget {
  const BadgeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 350),
        child: Column(
          children: [
            Center(
              child: Badge(
                toAnimate: false,
                shape: BadgeShape.square,
                badgeColor: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
                badgeContent: const Text(
                  'BADGE', style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Chip(
              padding: EdgeInsets.all(0),
              backgroundColor: Colors.deepPurple,
              label: Text(
                'BADGE', style: TextStyle(color: Colors.white),
              )
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              height: 51,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                  )
                ),
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const BarcodeScreen(),
                    ),
                  );
                }, 
                child: const Text(
                  'Barcode',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}