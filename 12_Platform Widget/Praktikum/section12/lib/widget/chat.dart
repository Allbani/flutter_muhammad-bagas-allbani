import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatelessWidget {

  final String ImageUrl;
  final String Name;
  final String Massage;
  final String Massage1;
  final String Time;

  Chat(
      {
      required this.ImageUrl,
      required this.Massage,
      required this.Massage1,
      required this.Name,
      required this.Time
      }
    );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          ImageUrl,
          width: 55,
          height: 55,
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Name,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text.rich(TextSpan(
                text: Massage,
                style: GoogleFonts.poppins(
                  color: Colors.blue
                ),
                children: [
                  TextSpan(
                      text: Massage1,
                      style: GoogleFonts.poppins(
                        color: Colors.grey
                      )
                  )
                ]
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          Time,
          style: GoogleFonts.poppins(
            color: Colors.grey
          )
        )
      ],
    );
  }
}
