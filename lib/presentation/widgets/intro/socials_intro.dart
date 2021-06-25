import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialsIntro extends StatelessWidget {
  final Icon icon1;
  final Icon icon2;
  final Icon icon3;

  SocialsIntro({required this.icon1, required this.icon2, required this.icon3});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Card(
              color: Color(0xFFC4C4C4),
              elevation: 8,
              shadowColor: Color(0xFFC4C4C4),
              child: Padding(
                padding: const EdgeInsets.all(4.5),
                child: icon1,
              ),
              ),
          Card(
              color: Color(0xFFC4C4C4),
              elevation: 2,
              shadowColor: Color(0xFFC4C4C4),
              child: Padding(
                padding: const EdgeInsets.all(4.5),
                child: icon2,
              ),
              ),
          Card(
              color: Color(0xFFC4C4C4),
              elevation: 2,
              shadowColor: Color(0xFFC4C4C4),
              child: Padding(
                padding: const EdgeInsets.all(4.5),
                child: icon3,
              ),
              ),
        ],
      ),
    );
  }
}
