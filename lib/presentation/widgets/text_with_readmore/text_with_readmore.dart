import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextWithReadMore extends StatelessWidget {
  final String title;
  final String description;
  final String readMore;

  TextWithReadMore({required this.title, required this.description, required this.readMore});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          Text(description, style: GoogleFonts.openSans(fontSize: 10, color: Colors.white),),
          SizedBox(height: 10,),
          Text("|   $readMore   |", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}
