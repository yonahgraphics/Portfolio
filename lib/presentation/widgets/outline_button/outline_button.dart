import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOutlineButton extends StatelessWidget {
  final String buttonText;
  const MyOutlineButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          side: BorderSide(width: 5.0, color: Colors.black),
      ),
        onPressed: (){null;},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 23.0, horizontal: 30),
          child: Text(buttonText, style: GoogleFonts.montserrat(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.black),),
        ));

  }
}
