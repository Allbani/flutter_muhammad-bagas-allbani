import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contac extends StatelessWidget {
  final String image;
  final String text;
  final String contac;

  Contac(
    {
      required this.image,
      required this.contac,
      required this.text
      }
    );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 16),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                image,
                width: 60,
                height: 60,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    contac,
                    style: GoogleFonts.poppins(fontSize: 15),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
