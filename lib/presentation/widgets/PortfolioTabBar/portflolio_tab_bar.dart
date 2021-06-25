import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portforlio/presentation/widgets/PortfolioTabBar/project_grid_builder.dart';

class PortfolioTabBar extends StatelessWidget {
  const PortfolioTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _myTabs =  [Text("ALL"), Text("CODED"), Text("DESIGNED")];

    return DefaultTabController(
      initialIndex: 1,
      length: _myTabs.length,
      child: Container(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 40),
            child: Stack(
              children: [
                Positioned(
                  top: 25,
                    child: Container(width: 1500, height:2, color: Colors.grey,)),
                TabBar(
                  tabs:_myTabs,
                isScrollable: true,
                labelStyle: GoogleFonts.montserrat(fontSize: 20,color: Colors.white,),
                unselectedLabelColor: Color(0xFF7C7C7C),
                indicatorColor: Colors.white,
                indicatorWeight: 2.0,
                indicatorPadding: EdgeInsets.zero,
                // indicator,
                // labelPadding,
                //unselectedLabelStyle
              ),]
            ),
          ),
          SizedBox(
            height: 705,
            child: TabBarView(children: [
           ProjectGridBuilder(), ProjectGridBuilder(), ProjectGridBuilder(),
            ]),
          ),
        ],
      )),
    );
  }
}
