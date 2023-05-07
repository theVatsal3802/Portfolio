import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/data.dart';
import 'package:portfolio/utils/parse_functions.dart';
import 'package:portfolio/widgets/about_widget.dart';
import 'package:portfolio/widgets/side_drawer.dart';
import 'package:portfolio/widgets/sidebar.dart';

class ContactScreen extends StatefulWidget {
  static const routeName = "/contact";
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
                "assets/contact.jpg",
                height: height,
                width: width > height ? width * 0.77 : width,
                fit: BoxFit.cover,
              ),
              Container(
                height: height,
                width: width > height ? width * 0.77 : width,
                color: Colors.black54,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Contact",
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "You can directly contact me through the following:",
                            textScaleFactor: 1,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  fontWeight: FontWeight.w200,
                                ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 20,
                            children: const [
                              AboutWidget(
                                icon: Icons.call,
                                text: Data.phone,
                              ),
                              AboutWidget(
                                icon: Icons.email_outlined,
                                text: Data.email,
                              ),
                              AboutWidget(
                                icon: FontAwesomeIcons.github,
                                text: Data.github,
                              ),
                              AboutWidget(
                                icon: FontAwesomeIcons.instagram,
                                text: Data.instagram,
                              ),
                              AboutWidget(
                                icon: FontAwesomeIcons.linkedin,
                                text: Data.linkedin,
                              ),
                              AboutWidget(
                                icon: FontAwesomeIcons.twitter,
                                text: Data.twitter,
                              ),
                            ],
                          ),
                        ],
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
