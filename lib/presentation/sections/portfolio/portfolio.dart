import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portforlio/presentation/widgets/PortfolioTabBar/portflolio_tab_bar.dart';
import 'package:portforlio/presentation/widgets/outline_button/outline_button.dart';
class Portfolio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF1A1A1A),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("portfolio.png"),
                fit: BoxFit.cover
              ),
            ),
            child: Center(child: MyOutlineButton(buttonText: 'PORTFOLIO',)),
          ),
         PortfolioTabBar(),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
            child: Text("And many more to come!",textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),),
          )
        ],
      ),
    );
  }
}
