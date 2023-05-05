import 'package:flutter/material.dart';
import 'package:portfolio/screens/about_screen.dart';
import 'package:portfolio/screens/contact_screen.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/resume_screen.dart';
import 'package:portfolio/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vatsal Adhiya',
      theme: theme(),
      home: const Home(),
      routes: {
        Home.routeName: (context) => const Home(),
        AboutScreen.routeName: (context) => const AboutScreen(),
        ResumeScreen.routeName: (context) => const ResumeScreen(),
        ContactScreen.routeName: (context) => const ContactScreen(),
      },
    );
  }
}
