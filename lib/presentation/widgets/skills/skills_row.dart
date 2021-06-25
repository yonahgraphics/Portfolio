import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsRow extends StatelessWidget {
  final String imagePath1;
  final String descp1;
  final String imagePath2;
  final String descp2;
  final String imagePath3;
  final String descp3;
  final String imagePath4;
  final String descp4;

  SkillsRow({
    required this.imagePath1,
    required this.descp1,
    required this.imagePath2,
    required this.descp2,
    required this.imagePath3,
    required this.descp3,
    required this.imagePath4,
    required this.descp4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
      Column(
        children: [
          Image.asset(imagePath1,height: 100, width: 93,),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text(descp1, textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 20),
            ),
          )
        ],
      ),
      Column(
        children: [
          Image.asset(imagePath2),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text(descp2, textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 20),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Image.asset(imagePath3),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text(descp3, textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 20),
            ),
          )
        ],
      ),
      Column(
        children: [
          Image.asset(imagePath4),
          Padding(
    padding: const EdgeInsets.only(top: 25.0),
            child: Text(descp4, textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 20),),
          )
        ],
      ),
    ]));
  }
}
