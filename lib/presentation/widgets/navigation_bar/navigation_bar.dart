import 'package:flutter/material.dart';

import 'contact_me_button.dart';
import 'nav_item.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 80, width: 80, child: Image.asset("assets/logo1.png"),),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                NavItem(title: "About me"),
                SizedBox(width: 60,),
                NavItem(title: "Skills"),
                SizedBox(width: 60,),
                NavItem(title: "Portfolio"),
                SizedBox(width: 60,),
                ContactMe(title: "CONTACT ME"),
              ],
            ),
          ],
        )
    );
  }
}
