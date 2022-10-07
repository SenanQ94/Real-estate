import 'package:flutter/material.dart';
import 'package:real_estate/constants.dart';
import 'package:real_estate/models/projects.dart';
import 'package:real_estate/responsive.dart';

import 'project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        Responsive(
          desktop: buildGridView(
            itemCount: demoProjects.length,
            crossAxisCount: 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          tablet: buildGridView(
            itemCount: demoProjects.length,
            crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          mobileLarge: buildGridView(
            itemCount: demoProjects.length,
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          mobile: buildGridView(
            itemCount: demoProjects.length,
            crossAxisCount: 1,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
        )
      ],
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          mainAxisSpacing: kDefaultPadding,
          crossAxisSpacing: kDefaultPadding,
        ),
        itemBuilder: itemBuilder);
  }
}
