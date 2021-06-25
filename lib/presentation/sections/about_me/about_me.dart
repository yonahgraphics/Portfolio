import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portforlio/presentation/widgets/aboutme/AboutMe_stack_with_content/about_me_stack_with_content.dart';
import 'package:portforlio/presentation/widgets/centered_view/centered_view.dart';
import 'package:portforlio/presentation/widgets/outline_button/outline_button.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Column(
        children: [
          MyOutlineButton(buttonText: "ABOUT ME"),
          SizedBox(height: 60,),
          Text("Nulla in velit a metus rhoncus tempus. Nulla congue nulla vel"
              " sem varius finibus. Sed ornare sit amet lorem\n sed viverra. In vel "
              "urna quis libero viverra facilisis ut ac est.", textAlign: TextAlign.center, style: GoogleFonts.openSans(fontSize: 16 ),),
          SizedBox(height: 60,),
          Text("|     EXPLORE     |", style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 60,),
          Image.asset("assets/separatorBlack 1.png"),
          SizedBox(height: 60,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            AboutMeStackWithContent(
              title: 'DESIGN',
              description: 'I can design the site based on your needs and suggestions. '
                  'I can \n also design the site from scratch and consult you during the job.',
              topRightCornerImage: 'assets/pencil.png',
            ),
            AboutMeStackWithContent(
              title: 'DEVELOPMENT',
              description: 'I can design the site based on your needs and suggestions. '
                  'I can\n also design the site from scratch and consult you during the job.',
              topRightCornerImage: 'assets/spanner.png',
            ),
          ]),
          SizedBox(height: 40,),
          AboutMeStackWithContent(
            title: 'MAINTENANCE',
            description: 'I can design the site based on your needs and suggestions. '
                'I can\n also design the site from scratch and consult you during the job.',
            topRightCornerImage: 'assets/gear.png',
          ),
          SizedBox(height: 60,),
          Image.asset("assets/separatorBlack 1.png"),
          SizedBox(height: 60,),
        ],
      ),
    );
  }
}
