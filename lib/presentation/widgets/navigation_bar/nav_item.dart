import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class NavItem extends StatefulWidget {
   String title;
   NavItem({required this.title});

  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
   bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (f)=>setState(()=>_isHover = true),
        onExit: (f)=>setState(()=>_isHover = false),
        child: Text(widget.title, style: GoogleFonts.montserrat(fontSize: _isHover?40:15, color: _isHover?Colors.pink:Colors.white, fontWeight: FontWeight.bold)));
  }
}
