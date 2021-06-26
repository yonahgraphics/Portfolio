class ProjectDetails{
  final String projectTitle;
  final String projectImagePath;
  final String projectDescription;
 ProjectDetails({required this.projectTitle, required this.projectImagePath, required this.projectDescription});
}

List<ProjectDetails> images = [
  ProjectDetails(projectImagePath: "one.png", projectTitle: "Project Athena1",  projectDescription: "Cool project1"),
  ProjectDetails(projectImagePath: "two.png", projectTitle: "Project Athena2",  projectDescription: "Cool project2"),
  ProjectDetails(projectImagePath: "three.png", projectTitle: "Project Athena3", projectDescription: "Cool project3"),
  ProjectDetails(projectImagePath: "four.png", projectTitle: "Project Athena4", projectDescription: "Cool project4"),
  ProjectDetails(projectImagePath: "five.png", projectTitle: "Project Athena5", projectDescription: "Cool project5"),
  ProjectDetails(projectImagePath: "six.png", projectTitle: "Project Athena6",  projectDescription: "Cool project6")
];
