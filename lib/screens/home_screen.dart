import 'package:flutter/material.dart';
import 'package:portfolio/utils/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/background.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.77,
          fit: BoxFit.cover,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.77,
          color: Colors.black87,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Data.name,
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  Data.description,
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
