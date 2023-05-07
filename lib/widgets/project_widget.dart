import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/parse_functions.dart';
import 'package:portfolio/widgets/rounded_buttons.dart';

class ProjectWidget extends StatelessWidget {
  final Map<String, String> data;
  const ProjectWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 300,
      width: ParseFunctions.responsive(context) ? width * 0.21 : width * 0.65,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.white30,
            blurRadius: 10,
            blurStyle: BlurStyle.outer,
          ),
        ],
        gradient: const LinearGradient(
          colors: [
            Colors.black38,
            Colors.black26,
            Colors.white24,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            data["name"]!,
            textScaleFactor: 1,
            maxLines: 3,
            softWrap: true,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Theme.of(context).colorScheme.background,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
          ),
          Text(
            data["description"]!,
            textScaleFactor: 1,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.background,
                ),
          ),
          RoundedButton(
            tooltip: "View on Github",
            iconName: FontAwesomeIcons.github,
            onTap: () async {
              await ParseFunctions.launchConnection(
                data["link"]!,
                context,
              );
            },
          ),
        ],
      ),
    );
  }
}