import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/utils/data.dart';
import 'package:portfolio/utils/parse_functions.dart';
import 'package:portfolio/widgets/side_drawer.dart';
import 'package:portfolio/widgets/sidebar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
          const HomeScreen(),
        ],
      ),
    );
  }
}
