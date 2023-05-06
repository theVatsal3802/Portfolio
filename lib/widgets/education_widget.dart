import 'package:flutter/material.dart';
import 'package:portfolio/utils/parse_functions.dart';

class EducationWidget extends StatelessWidget {
  final Map<String, String> data;
  const EducationWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 300,
      width: ParseFunctions.responsive(context) ? width * 0.21 : width * 0.28,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 20,
      ),
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            data["image"]!,
            height: 100,
            width: 100,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.high,
          ),
          Text(
            data["degree"]!,
            textScaleFactor: 1,
            maxLines: 3,
            softWrap: true,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Theme.of(context).colorScheme.background,
                ),
          ),
          Text(
            data["name"]!,
            textScaleFactor: 1,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.background,
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Chip(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                label: Text(
                  "Score: ${data["score"]!}",
                  textScaleFactor: 1,
                ),
              ),
              Chip(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                label: Text(
                  data["duration"]!,
                  textScaleFactor: 1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
