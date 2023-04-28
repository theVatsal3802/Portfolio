import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/data.dart';
import 'package:portfolio/widgets/connect_icon_row.dart';
import 'package:portfolio/widgets/sidebar_list_tile.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.23,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          CircleAvatar(
            radius: 88,
            backgroundColor: const Color(0xff453838),
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Theme.of(context).colorScheme.background,
              foregroundImage: const AssetImage("assets/me_circle.png"),
            ),
          ),
          const Spacer(),
          Text(
            Data.name,
            textScaleFactor: 1,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.23,
            child: const Center(
              child: ConnectIconRow(),
            ),
          ),
          const Spacer(),
          SidebarListTile(
            title: "Home",
            icon: Icons.home_filled,
            onTap: () {},
          ),
          const Spacer(),
          SidebarListTile(
            title: "About",
            icon: Icons.person,
            onTap: () {},
          ),
          const Spacer(),
          SidebarListTile(
            title: "Resume",
            icon: Icons.contact_page_outlined,
            onTap: () {},
          ),
          const Spacer(),
          SidebarListTile(
            title: "Projects",
            icon: FontAwesomeIcons.globe,
            onTap: () {},
          ),
          const Spacer(),
          SidebarListTile(
            title: "Contact",
            icon: Icons.contact_support_outlined,
            onTap: () {},
          ),
          const Spacer(),
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
