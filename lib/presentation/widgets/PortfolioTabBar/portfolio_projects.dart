class ProjectImage{
 final String projectImagePath;
 final String projectDescription;
 ProjectImage({required this.projectImagePath, required this.projectDescription});
}

List<ProjectImage> images = [
  ProjectImage(projectImagePath: "one.png",   projectDescription: "Cool project1"),
  ProjectImage(projectImagePath: "two.png",   projectDescription: "Cool project2"),
  ProjectImage(projectImagePath: "three.png", projectDescription: "Cool project3"),
  ProjectImage(projectImagePath: "four.png",  projectDescription: "Cool project4"),
  ProjectImage(projectImagePath: "five.png",  projectDescription: "Cool project5"),
  ProjectImage(projectImagePath: "six.png",   projectDescription: "Cool project6")
];
