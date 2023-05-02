import 'package:flutter/material.dart';
import 'package:portfolio/utils/parse_functions.dart';
import 'package:portfolio/widgets/skill_widget.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ParseFunctions.responsive(context)
          ? MediaQuery.of(context).size.width * 0.3
          : MediaQuery.of(context).size.width * 0.4,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: const [
          SkillWidget(
            imageUrl: "https://img.icons8.com/color/48/null/flutter.png",
          ),
          SkillWidget(
            imageUrl: "https://img.icons8.com/color/48/null/dart.png",
          ),
          SkillWidget(
            imageUrl:
                "https://img.icons8.com/fluency/48/null/java-coffee-cup-logo.png",
          ),
          SkillWidget(
            imageUrl: "https://img.icons8.com/color/48/null/git.png",
          ),
          SkillWidget(
            imageUrl: "https://img.icons8.com/sf-black/64/null/github.png",
          ),
          SkillWidget(
            imageUrl: "https://img.icons8.com/color/48/null/firebase.png",
          ),
          SkillWidget(
            imageUrl:
                "https://img.icons8.com/color/48/null/c-plus-plus-logo.png",
          ),
          SkillWidget(
            imageUrl:
                "https://img.icons8.com/fluency/48/null/c-programming.png",
          ),
          SkillWidget(
            imageUrl: "https://img.icons8.com/fluency/48/null/python.png",
          ),
          SkillWidget(
            imageUrl: "https://img.icons8.com/color/48/null/html-5--v1.png",
          ),
          SkillWidget(
            imageUrl: "https://img.icons8.com/color/48/null/css3.png",
          ),
        ],
      ),
    );
  }
}
