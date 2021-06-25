import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portforlio/presentation/widgets/centered_view/centered_view.dart';

class Footer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Color _iconColor = Colors.white;
    return Container(
      color: Color(0xFF1A1A1A),
      child: CenteredView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80,),
            Icon(FontAwesomeIcons.angleDoubleUp, color: Colors.white,),
            SizedBox(height: 30,),
            Text("BACK TO THE TOP", style: GoogleFonts.montserrat(fontSize: 20, color: _iconColor),),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("facebook.png",),
                SizedBox(width: 30,),
                Image.asset("linkedin.png",),
                SizedBox(width: 30,),
                Image.asset("instagram.png",),
                SizedBox(width: 30,),
                Image.asset("email.png",),
              ],
            ),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.copyright_rounded, color: _iconColor,),
        Text("@2020 Tomasz Gajda", style:GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, color: _iconColor),),
        SizedBox(width: 20,),
        Text("All Rights Reserved.", style:GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.normal,color: _iconColor),),
              ],
            ),
            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}
