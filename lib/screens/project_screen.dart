import 'package:flutter/material.dart';
import 'package:portfolio/utils/data.dart';
import 'package:portfolio/utils/parse_functions.dart';
import 'package:portfolio/widgets/project_widget.dart';
import 'package:portfolio/widgets/side_drawer.dart';
import 'package:portfolio/widgets/sidebar.dart';

class ProjectScreen extends StatelessWidget {
  static const routeName = "/projects";
  const ProjectScreen({super.key});

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
                "assets/project.jpg",
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Projects",
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
                      Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          ProjectWidget(
                            data: Data.projects[0],
                          ),
                          ProjectWidget(
                            data: Data.projects[1],
                          ),
                          ProjectWidget(
                            data: Data.projects[2],
                          ),
                          ProjectWidget(
                            data: Data.projects[3],
                          ),
                          ProjectWidget(
                            data: Data.projects[4],
                          ),
                          ProjectWidget(
                            data: Data.projects[5],
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
