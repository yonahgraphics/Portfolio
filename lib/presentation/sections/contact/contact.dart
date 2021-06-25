import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portforlio/presentation/widgets/centered_view/centered_view.dart';
import 'package:portforlio/presentation/widgets/outline_button/outline_button.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(colors: [Color(0xFFFFFFFF), Color(0xFF1A1515),], center: Alignment.center, radius: 10,
            ),
          ),
      child: CenteredView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            MyOutlineButton(buttonText: "  CONTACT  "),
            SizedBox(height: 50,),
            Text("Nulla in velit a metus rhoncus tempus. Nulla congue nulla vel "
                "sem varius finibus. Sed ornare sit amet lorem\n sed viverra. In vel"
                " urna quis libero viverra facilisis ut ac est.", textAlign: TextAlign.center,
              style: GoogleFonts.openSans(fontSize: 14, color: Colors.black,),
            ),
            SizedBox(height: 25,),
            Image.asset("assets/separatorBlack 1.png"),
            SizedBox(height: 40,),
            TextField(
              decoration: InputDecoration(
                helperText: "ENTER YOUR NAME*",
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                     // color: ,
                    //  width: ,
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
