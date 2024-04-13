import 'package:educo/utils/dimensions.dart';
import 'package:flutter/material.dart';

class ProjectTabPage extends StatelessWidget {
  ProjectTabPage({super.key});

  final List<Map<String, dynamic>> project = [
    {
      'imagePaths': 'assets/images/project.png',
    },
    {
      'imagePaths': 'assets/images/project_1.png',
    },
    {
      'imagePaths': 'assets/images/project_2.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: project.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: Dimensions.width10,
        crossAxisSpacing: Dimensions.height10,
      ),
      itemBuilder: (context, index) {
        return GridTile(
          child: Container(
            height: Dimensions.height10 * 21.6,
            width: Dimensions.width10 * 16.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              project[index]['imagePaths'],
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
