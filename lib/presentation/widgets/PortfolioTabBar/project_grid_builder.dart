import 'package:flutter/material.dart';
import 'package:portforlio/presentation/pages/home/singleProject.dart';
import 'package:portforlio/presentation/widgets/PortfolioTabBar/portfolio_projects.dart';

import 'HoverImage.dart';

class ProjectGridBuilder extends StatefulWidget {
  const ProjectGridBuilder({Key? key}) : super(key: key);

  @override
  _ProjectGridBuilderState createState() => _ProjectGridBuilderState();
}

class _ProjectGridBuilderState extends State<ProjectGridBuilder> {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: images.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        childAspectRatio: 1.6,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=>SingleProject(singleProjectDetails: images[index], projectIndex: index,)));
          },
            child: Hero(
              tag: "image$index",
                child: HoverImage(imageUrl: images[index].projectImagePath,)));
      },
    );
  }
}

