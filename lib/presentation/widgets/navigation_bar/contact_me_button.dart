import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ContactMe extends StatelessWidget {
  String title;
  ContactMe({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 11),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(title, style: GoogleFonts.montserrat(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)),
      
    );
  }
}
