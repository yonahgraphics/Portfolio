import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class NavItem extends StatelessWidget {
   String title;
   NavItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: GoogleFonts.montserrat(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold));
  }
}
