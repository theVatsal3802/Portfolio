import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/rounded_buttons.dart';

class ConnectIconRow extends StatelessWidget {
  const ConnectIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundedButton(
          tooltip: "LinkedIn",
          iconName: FontAwesomeIcons.linkedin,
          onTap: () {},
        ),
        RoundedButton(
          tooltip: "Gmail",
          iconName: Icons.email,
          onTap: () {},
        ),
        RoundedButton(
          tooltip: "Instagram",
          iconName: FontAwesomeIcons.instagram,
          onTap: () {},
        ),
        RoundedButton(
          tooltip: "GitHub",
          iconName: FontAwesomeIcons.github,
          onTap: () {},
        ),
        RoundedButton(
          tooltip: "Twitter",
          iconName: FontAwesomeIcons.twitter,
          onTap: () {},
        ),
      ],
    );
  }
}
