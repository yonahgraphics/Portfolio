import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portforlio/presentation/sections/about_me/about_me.dart';
import 'package:portforlio/presentation/sections/contact/contact.dart';
import 'package:portforlio/presentation/sections/footer/footer.dart';
import 'package:portforlio/presentation/sections/home_section/content_below_home.dart';
import 'package:portforlio/presentation/sections/home_section/home_background.dart';
import 'package:portforlio/presentation/sections/portfolio/portfolio.dart';
import 'package:portforlio/presentation/sections/skills/skills.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeSection(),
            //This is the section with the picture, name and socials
            ContentBelowHome(),
            //This is the section with some words in a black background
            Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(colors: [Color(0xFFFFFFFF), Color(0xFF1A1515),], center: Alignment.center, radius: 5,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AboutMe(),
                  SizedBox(height: 25,),
                  Skills()
                ],
              ),
            ),
            Portfolio(),
            Contact(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
