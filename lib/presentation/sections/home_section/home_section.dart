import 'package:flutter/material.dart';
import 'package:portforlio/presentation/widgets/centered_view/centered_view.dart';
import 'package:portforlio/presentation/widgets/intro/home_image.dart';
import 'package:portforlio/presentation/widgets/intro/intro.dart';
class HomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Color(0xFFD7D7D7),
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Color(0xFFFFFFFF), Color(0xFF1A1515),  ],
          center: Alignment.topLeft,
          radius: 5,
          tileMode: TileMode.repeated,
          focalRadius: 3,
        ),
      ),
        height: MediaQuery.of(context).size.height,
        // child: Image.asset(
        //     "bg_new.png",
        // ),
        child: CenteredView(
          child: Column(
            children: [
            // NavigationBar(),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Intro(name: 'Tomasz Gajda',
                    speciality: 'Front-end Developer / UI Designer',),
                  SizedBox(width: 200,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: HomeImage(homeImage: "bg1.png"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
