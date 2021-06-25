import 'package:flutter/material.dart';
import 'package:portforlio/presentation/widgets/PortfolioTabBar/portfolio_projects.dart';
class ProjectGridBuilder extends StatelessWidget {
  const ProjectGridBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      itemCount: images.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        childAspectRatio:1.6,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Image.asset(images[index].projectImagePath),
        );
      },
    );
  }
}
