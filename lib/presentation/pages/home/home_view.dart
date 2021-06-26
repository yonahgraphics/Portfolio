import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portforlio/presentation/sections/about_me/about_me.dart';
import 'package:portforlio/presentation/sections/contact/contact.dart';
import 'package:portforlio/presentation/sections/footer/footer.dart';
import 'package:portforlio/presentation/sections/home_section/content_below_home.dart';
import 'package:portforlio/presentation/sections/home_section/home_section.dart';
import 'package:portforlio/presentation/sections/portfolio/portfolio.dart';
import 'package:portforlio/presentation/sections/skills/skills.dart';
import 'package:portforlio/presentation/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: NavigationBar(),
            pinned: true,
            elevation: 0,
            backgroundColor: Color(0xFF1A1A1A),
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFF1A1515),
                    ],
                    center: Alignment.topLeft,
                    radius: 38,
                    tileMode: TileMode.repeated,
                    focalRadius: 3,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: [
                HomeSection(),
                //This is the section with the picture, name and socials
                ContentBelowHome(),
                //This is the section with some words in a black background
                Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xFF1A1515),
                      ],
                      center: Alignment.center,
                      radius: 5,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [AboutMe(), Skills()],
                  ),
                ),
                Portfolio(),
                Contact(),
                Footer(),
              ],
            ),
          ])),
        ],
      ),
    );
  }
}
