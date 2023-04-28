import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen.dart';
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
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Sidebar(),
          HomeScreen(),
        ],
      ),
    );
  }
}
