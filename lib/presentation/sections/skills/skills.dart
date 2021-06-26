import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portforlio/presentation/widgets/centered_view/centered_view.dart';
import 'package:portforlio/presentation/widgets/outline_button/outline_button.dart';
import 'package:portforlio/presentation/widgets/skills/skills_row.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //SKills section
          MyOutlineButton(buttonText: "     SKILLS     "),

          //The skills start here
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                //USING NOW
                SizedBox(height: 60,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("USING NOW:", style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2),),
                    SizedBox(height: 30,),
                    SkillsRow(
                      imagePath1: 'html5.png', descp1: "HTML5",
                      imagePath2: 'css3.png', descp2: "CSS3",
                      imagePath3: 'saas.png', descp3: "SAAS",
                      imagePath4: 'javascript.png', descp4: "JAVASCRIPT",
                    ),
                    SizedBox(height: 40,),
                    SkillsRow(
                      imagePath1: 'nodejs.png', descp1: "NODEJS",
                      imagePath2: 'mysql.png', descp2: "MYSQL",
                      imagePath3: 'mongodb.png', descp3: "MONGODB",
                      imagePath4: 'typescript.png', descp4: "TYPESCRIPT",
                    ),
                  ],
                ),

                //LEARNING
                SizedBox(height: 60,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("LEARNING:", style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2),),
                    SizedBox(height: 30,),
                    // SkillsRow(
                    //   imagePath1: 'nodejs.png', descp1: "NODEJS",
                    //   imagePath2: 'mysql.png', descp2: "MYSQL",
                    //   imagePath3: 'mongodb.png', descp3: "MONGODB",
                    //   imagePath4: 'typescript.png', descp4: "TYPESCRIPT",
                    // ),
                    SkillsRow(
                      imagePath1: 'react.png', descp1: "REACT",
                      imagePath2: 'bootstrap.png', descp2: "BOOTSTRAP",
                      imagePath3: 'git.png', descp3: "GIT",
                      imagePath4: 'figma.png', descp4: "FIGMA",
                    ),
                  ],
                ),

                //OTHER SKILLS
                SizedBox(height: 60,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("OTHER SKILLS:", style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2),),
                    SizedBox(height: 30,),
                    SkillsRow(
                      imagePath1: 'england.png', descp1: "ANGIELSKI \nC1/C2",
                      imagePath2: 'spain.png', descp2: "HISZPAŃSKI\nB1/B2",
                      imagePath3: 'c++.png', descp3: "C++",
                      imagePath4: 'c.png', descp4: "C",
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
