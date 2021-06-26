import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portforlio/presentation/widgets/PortfolioTabBar/portfolio_projects.dart';

class SingleProject extends StatelessWidget {
   ProjectDetails singleProjectDetails;
  int projectIndex;
  SingleProject({required this.singleProjectDetails, required this.projectIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Hero(
              tag: "image$projectIndex",
              child: Container(
                padding: EdgeInsets.only(left: 20),
                width: MediaQuery.of(context).size.width*0.45,
                height: MediaQuery.of(context).size.height*0.8,
                child: Image.asset(singleProjectDetails.projectImagePath, fit: BoxFit.cover,),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Text(singleProjectDetails.projectTitle, style: GoogleFonts.openSans(fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text(singleProjectDetails.projectDescription,style: GoogleFonts.montserrat(fontSize: 20,letterSpacing: 2.0),),
                  SizedBox(height: 30,),
                  //Text(singleProjectDetails.projectGithub);
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 30,
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton(
                              hoverColor: Colors.blueGrey,
                              backgroundColor: Colors.white,
                              onPressed: null,
                                child: Icon(FontAwesomeIcons.github, color: Colors.black,)),
                          )),
                      SizedBox(width: 30,),
                      Card(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                        ),
                          elevation: 30,
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton(
                                hoverColor: Colors.blueGrey,
                              backgroundColor: Colors.white,
                              onPressed: null,
                                child: Icon(FontAwesomeIcons.chrome, color: Colors.black,)),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}
