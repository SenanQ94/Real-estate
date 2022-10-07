import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate/constants.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: Text(
            'Goals',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        buildGoals(goal: 'Planning Stage'),
        buildGoals(goal: 'Development'),
        buildGoals(goal: 'Execution Phase'),
        buildGoals(goal: 'New Way To Live'),
      ],
    );
  }

  Padding buildGoals({required String goal}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          SizedBox(width: kDefaultPadding / 2),
          Text(goal),
        ],
      ),
    );
  }
}
