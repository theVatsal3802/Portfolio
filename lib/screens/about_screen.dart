import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/data.dart';
import 'package:portfolio/utils/parse_functions.dart';
import 'package:portfolio/widgets/about_widget.dart';
import 'package:portfolio/widgets/side_drawer.dart';
import 'package:portfolio/widgets/sidebar.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = "about";
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: !ParseFunctions.responsive(context) ? const SideDrawer() : null,
      appBar: !ParseFunctions.responsive(context)
          ? AppBar(
              title: Text(
                Data.name,
                textScaleFactor: 1,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            )
          : null,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (ParseFunctions.responsive(context)) const Sidebar(),
          Stack(
            children: [
              Image.asset(
                "assets/about.jpeg",
                height: height,
                width: width > height ? width * 0.77 : width,
                fit: BoxFit.cover,
              ),
              Container(
                height: height,
                width: width > height ? width * 0.77 : width,
                color: Colors.black87,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        textScaleFactor: 1,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        Data.aboutShort,
                        textScaleFactor: 1,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              AboutWdiget(
                                icon: FontAwesomeIcons.cakeCandles,
                                text: Data.dob,
                              ),
                              AboutWdiget(
                                icon: FontAwesomeIcons.mobile,
                                text: Data.phone,
                              ),
                              AboutWdiget(
                                icon: Icons.email_outlined,
                                text: Data.email,
                              ),
                              AboutWdiget(
                                icon: Icons.location_on_outlined,
                                text: Data.location,
                              ),
                              AboutWdiget(
                                icon: Icons.school_outlined,
                                text: Data.study,
                              ),
                            ],
                          ),
                          Image.asset(
                            "assets/me.jpg",
                            height:
                                ParseFunctions.responsive(context) ? 600 : 700,
                            width: ParseFunctions.responsive(context)
                                ? width * 0.3
                                : width * 0.4,
                            fit: BoxFit.contain,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "More about me",
                        textScaleFactor: 1,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        Data.about,
                        textScaleFactor: 1,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
