import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portforlio/presentation/widgets/intro/socials_intro.dart';
class Intro extends StatelessWidget {
 final String name;
 final String speciality;

 Intro({required this.name, required this.speciality});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hi, I am", style: GoogleFonts.raleway(fontSize: 25, fontWeight: FontWeight.bold),),
        SizedBox(height: 35,),
        Text(name, style: GoogleFonts.raleway(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40),),
        Text(speciality,style: GoogleFonts.raleway(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold)),
        SizedBox(height: 60,),
        SocialsIntro(icon1: Icon(Icons.alternate_email,), icon2: Icon(FontAwesomeIcons.github), icon3: Icon(FontAwesomeIcons.linkedin)),

      ],
    );
  }
}
