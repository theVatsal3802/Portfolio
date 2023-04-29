import 'package:portfolio/utils/parse_functions.dart';

class Data {
  static const String name = "Vatsal Adhiya";
  static const String description =
      "Enthusiastic Flutter dev.\nCreating innovative mobile apps and always looking to push boundaries in tech.";
  static const String aboutShort =
      "Flutter Developer Intern @ Xero Apps | IIIT Kota 2024 | Machine Learning and Quantum Computing Enthusiast";
  static const String about =
      "Hello, my name is Vatsal Adhiya. I am currently studying in IIIT Kota.  I am a third year B.Tech student in the field of Computer Science and Engineering. I am a Flutter developer with a passion for creating innovative mobile apps and a keen interest in machine learning and quantum computing. With strong skills in Flutter development and a desire to stay at the forefront of the industry, I bring responsive and beautiful designs to life. Always eager to learn and take on new challenges, I strive to push the boundaries of mobile development. I am constantly seeking new opportunities to grow and improve as a developer.";

  static const String email = "vatsaladhiya248@gmail.com";
  static const String dob = "3rd August, 2002";
  static const String phone = "8097058898";
  static String age = (ParseFunctions.getAge().toString());
  static const String devStatus = "vatsaladhiya248@gmail.com";
  static const String study = "";
  static const String location = "";

  static const String co =
      "A highly enthusiastic Flutter developer with a passion for innovation and an interest in machine learning and quantum computing. Always seeking new challenges and opportunities to grow as a developer. Driven to create beautiful, responsive designs and leverage the latest technologies to bring impactful solutions to life. Committed to continuously learning and pushing the boundaries of what is possible in the tech industry.";

  static const List<Map<String, Map<String, String>>> education = [
    {
      "10": {
        "name": "Ryan International School",
        "image": "assets/education/ryan.jpeg",
        "duration": "2017 - 2018",
        "score": "91.57 %",
      },
      "12": {
        "name": "Allen Career Institute",
        "image": "assets/education/allen.jpeg",
        "duration": "2018 - 2020",
        "score": "88.31 %",
      },
      "College": {
        "name": "Indian Institute of Information Technology Kota",
        "image": "assets/education/iiitkota.png",
        "duration": "2020 - Present",
        "score": "CGPA 8.39 / 10",
      },
    },
  ];

  static const List<Map<String, List<Map<String, String>>>> experience = [
    {
      "Intern": [
        {
          "name": "Xero Apps - KiranaFast",
          "image": "assets/experience/kf.png",
          "description":
              "Worked with a group of experienced Flutter Developers and implemented Clean Architecture in Flutter. Was also the part of the team that worked on new features as well as bug fixes.",
          "website": "https://www.kiranafast.com/",
          "duration": "Jan 2023 - Present",
          "role": "Flutter Developer Intern"
        },
      ],
    },
  ];

  static const List<Map<String, Map<String, String>>> projects = [
    {
      "Jingola": {
        "name": "Jingola India",
        "description":
            "A complete end to end solution for Jingola India Startup",
        "link": "https://github.com/theVatsal3802/Jingola-India",
      },
      "Teachers": {
        "name": "Attendance Management System Teachers",
        "description":
            "A flutter app to make the process of taking attendance of students easier and fool-proof for the teachers.",
        "link":
            "https://github.com/theVatsal3802/Attendance-Version-2-Teachers",
      },
      "Students": {
        "name": "Attendance Management System Students",
        "description":
            "A flutter app to make the process of taking attendance of students easier and fool-proof for the teachers. This is the student side app.",
        "link":
            "https://github.com/theVatsal3802/Attendance-Version-2-Students",
      },
      "Quinnn": {
        "name": "Quinnn",
        "description":
            "Quinnn is a platform designed to connect and empower individuals in the LGBTQ+ community.",
        "link": "https://github.com/theVatsal3802/Quinnn-App",
      },
      "Todo": {
        "name": "Organiz-Em",
        "description":
            "Most of us feel the need to organize our daily tasks. Organiz'Em app is the easiest way to do so.",
        "link": "https://github.com/theVatsal3802/Organiz-Em",
      },
      "Convertex": {
        "name": "Convertex",
        "description":
            "A Simple Currency Converter using Open Exchange API for conversion.",
        "link": "https://github.com/theVatsal3802/Convertex",
      },
    },
  ];
}
