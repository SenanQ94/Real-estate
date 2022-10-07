import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/projects.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                project.description!,
                style: TextStyle(height: 1.5),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextButton(
              onPressed: () {},
              child: Text(
                'More info >',
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ))
        ],
      ),
    );
  }
}
