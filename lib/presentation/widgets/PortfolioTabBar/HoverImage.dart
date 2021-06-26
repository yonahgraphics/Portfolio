import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoverImage extends StatefulWidget {
  const HoverImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          _isHover = true;
        });
      },
      onHover: (e) {
        setState(() {
        });
      },
      onExit: (e) {
        setState(() {
          _isHover = false;
        });
      },
      child: GestureDetector(
        onTap: null,
        child: Stack(
          alignment: Alignment.center,
          children: [
            animatedImage(),
            animatedCircle(),
            viewProject(),
            animatedUnderline(),
          ],
        ),
      ),
    );
  }

  animatedUnderline(){
    return Positioned(
      bottom: 140,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: _isHover?60:0,
        height: _isHover?3:0,
        color: Colors.white,
      ),
    );
  }

  viewProject(){
    return AnimatedOpacity(
      opacity: _isHover ? 1 : 0,
      duration: Duration(milliseconds: 100),
      child: Text(
        "View Project",
        style: GoogleFonts.montserrat(
            fontSize: _isHover ? 18 : 0,
            fontWeight: _isHover ? FontWeight.bold : FontWeight.normal,
            color: _isHover ? Colors.black : Colors.white),
      ),
    );
  }

  animatedCircle(){
    return AnimatedContainer(
      width: _isHover ? 200 : 0,
      duration: Duration(milliseconds: 100),
      decoration:
      BoxDecoration(color: Color(0xFF09F6D2), shape: BoxShape.circle),
    );
  }

  animatedImage(){
    return AnimatedPositioned(
      height: _isHover ? 600 : null,
      width: _isHover ? 700 : null,
      duration: Duration(milliseconds: 5000),
      curve: Curves.easeOutCubic,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),);
  }
}
