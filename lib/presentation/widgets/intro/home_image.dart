import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  String homeImage;
  HomeImage({required this.homeImage});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Image.asset(homeImage,
        height: MediaQuery.of(context).size.height*0.82,
        width: MediaQuery.of(context).size.width*0.35,
        fit: BoxFit.contain,
      ),
    );
  }
}
