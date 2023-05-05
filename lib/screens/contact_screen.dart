import 'package:flutter/material.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey();

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
                child: Form(
                  key: _formKey,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Full Name",
                                  textScaleFactor: 1,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.w200,
                                      ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 60,
                                  width: width > height
                                      ? width * 0.35
                                      : width * 0.4,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: TextFormField(
                                      autocorrect: true,
                                      enableSuggestions: true,
                                      keyboardType: TextInputType.name,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Abc Xyz",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Email ID",
                                  textScaleFactor: 1,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.w200,
                                      ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 60,
                                  width: width > height
                                      ? width * 0.35
                                      : width * 0.4,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: TextFormField(
                                      autocorrect: true,
                                      enableSuggestions: true,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "abc@xyz.com",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Subject",
                                textScaleFactor: 1,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontWeight: FontWeight.w200,
                                    ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 60,
                                width: width > height
                                    ? width * 0.71
                                    : width * 0.81,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: TextFormField(
                                    autocorrect: true,
                                    enableSuggestions: true,
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText:
                                          "To contact you for a great collaboration on a open source project",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Message",
                                textScaleFactor: 1,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontWeight: FontWeight.w200,
                                    ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                // height: 300,
                                width: width > height
                                    ? width * 0.71
                                    : width * 0.81,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: TextFormField(
                                    autocorrect: true,
                                    enableSuggestions: true,
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 8,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Hello",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.onPrimary,
                              padding: const EdgeInsets.all(20),
                            ),
                            child: Text(
                              "Send Message",
                              textScaleFactor: 1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "You can also directly contact me through the following:",
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                AboutWidget(
                                  icon: Icons.call,
                                  text: Data.phone,
                                ),
                                AboutWidget(
                                  icon: Icons.email_outlined,
                                  text: Data.email,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
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
