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
          crossAxisAlignment: CrossAxisAlignment.center,
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
            SizedBox(height: 100,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 350),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, bottom: 7),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 5, color: Colors.black),
                        bottom: BorderSide(width: 5, color: Colors.black)
                      )
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "ENTER YOUR NAME*",
                          hintStyle:  GoogleFonts.montserrat(fontSize: 14, color: Color(0xFF8B8B8B), fontWeight: FontWeight.bold),
                        border: InputBorder.none
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    padding: EdgeInsets.only(left: 20, bottom: 7),
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(width: 5, color: Colors.black),
                            bottom: BorderSide(width: 5, color: Colors.black)
                        )
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "ENTER YOUR EMAIL*",
                          hintStyle:  GoogleFonts.montserrat(fontSize: 14, color: Color(0xFF8B8B8B), fontWeight: FontWeight.bold),
                          border: InputBorder.none
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    padding: EdgeInsets.only(left: 20, bottom: 7),
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(width: 5, color: Colors.black),
                            bottom: BorderSide(width: 5, color: Colors.black)
                        )
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "ENTER YOUR PHONE NUMBER",
                          hintStyle:  GoogleFonts.montserrat(fontSize: 14, color: Color(0xFF8B8B8B), fontWeight: FontWeight.bold),
                          border: InputBorder.none
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    padding: EdgeInsets.only(left: 20, bottom: 7),
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(width: 5, color: Colors.black),
                            bottom: BorderSide(width: 5, color: Colors.black)
                        )
                    ),
                    child: TextField(
                      maxLines: 7,
                      decoration: InputDecoration(
                          hintText: "YOUR MESSAGE*",
                          hintStyle:  GoogleFonts.montserrat(fontSize: 14, color: Color(0xFF8B8B8B), fontWeight: FontWeight.bold),
                          border: InputBorder.none
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  SizedBox(height: 40,),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  padding: EdgeInsets.only(left: 50, bottom: 7),
                  decoration: BoxDecoration(border: Border(left: BorderSide(width: 3, color: Colors.black),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("SUBMIT", style: GoogleFonts.montserrat(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 60,
                  padding: EdgeInsets.only(left: 50, bottom: 7),
                  decoration: BoxDecoration(border: Border(right: BorderSide(width: 3, color: Colors.black),)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
