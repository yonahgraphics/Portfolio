import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeStackWithContent extends StatelessWidget {
  final String title;
  final String description;
  final String topRightCornerImage;

  AboutMeStackWithContent(
      {required this.title,
      required this.description,
      required this.topRightCornerImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(topRightCornerImage),
            Text(title,
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
          ]
        ),
        SizedBox(height: 20,),
        Text(description)
      ],
    );
  }
}
