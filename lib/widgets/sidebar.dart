import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/about_screen.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/utils/data.dart';
import 'package:portfolio/widgets/connect_icon_row.dart';
import 'package:portfolio/widgets/sidebar_list_tile.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.23,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          CircleAvatar(
            radius: 88,
            backgroundColor: const Color(0xff453838),
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Theme.of(context).colorScheme.background,
              foregroundImage: const AssetImage("assets/me_circle.png"),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(
              Data.name,
              textScaleFactor: 1,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          if (width * 0.23 > 350)
            SizedBox(
              width: width * 0.23,
              child: const Center(
                child: ConnectIconRow(),
              ),
            ),
          if (width * 0.23 <= 350)
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Let's Connect",
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
            ),
          const SizedBox(
            height: 30,
          ),
          SidebarListTile(
            title: "Home",
            icon: Icons.home_filled,
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                Home.routeName,
                (route) => false,
              );
            },
          ),
          SidebarListTile(
            title: "About",
            icon: Icons.person,
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                AboutScreen.routeName,
                (route) => false,
              );
            },
          ),
          SidebarListTile(
            title: "Resume",
            icon: Icons.contact_page_outlined,
            onTap: () {},
          ),
          SidebarListTile(
            title: "Projects",
            icon: FontAwesomeIcons.globe,
            onTap: () {},
          ),
          SidebarListTile(
            title: "Contact",
            icon: Icons.contact_support_outlined,
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "©️ Vatsal Adhiya",
              textScaleFactor: 1,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
            ),
            child: Text(
              "Designed by Deepanshi Birla",
              textScaleFactor: 1,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
