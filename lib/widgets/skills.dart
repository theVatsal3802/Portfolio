import 'package:flutter/material.dart';
import 'package:portfolio/utils/data.dart';
import 'package:portfolio/utils/parse_functions.dart';
import 'package:portfolio/widgets/skill_widget.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  List<Widget> getSkills() {
    List<Widget> skill = [];
    for (var s in Data.skills.keys) {
      skill.add(SkillWidget(imageUrl: Data.skills[s]!));
    }
    return skill;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ParseFunctions.responsive(context)
          ? MediaQuery.of(context).size.width * 0.3
          : MediaQuery.of(context).size.width * 0.9,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: getSkills(),
      ),
    );
  }
}
