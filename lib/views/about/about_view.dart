import 'dart:html';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume_application/constants/app_colors.dart';
import 'package:resume_application/locator.dart';
import 'package:resume_application/routing/route_names.dart';
import 'package:resume_application/services/navigation_service.dart';
import 'package:resume_application/text_files/about_me_body.dart';
import 'package:resume_application/text_files/about_me_title.dart';
import 'package:resume_application/widgets/image_hyperlink/hyperlink.dart';
import 'package:resume_application/widgets/visuals/buffer.dart';
import 'package:resume_application/widgets/visuals/spanning_banner.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
              ? TextAlign.left
              : TextAlign.center;

      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 20
              : 40;

      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;

      return Container(
          //width: 600,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            //children:
            children: //: ListView(
                /*children:*/ <Widget>[
              Buffer(137),
              Text(
                getaboutmetitle(),
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 0.9,
                    fontSize: titleSize),
                textAlign: textAlignment,
              ),
              Buffer(30),
              SpanningBanner(textAlignment, descriptionSize, "Skills"),
              Buffer(30),
              Text(
                "Languages",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: descriptionSize),
                textAlign: textAlignment,
              ),
              Buffer(30),
              Text(
                "- Proficient in Java, Python, and Flutter/Dart",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: descriptionSize * .8),
                textAlign: TextAlign.left,
              ),
              Buffer(30),
              Text(
                "- For when I'm not speaking in 1s and 0s: Fluency in Czech and proficiency in Italian",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: descriptionSize * .8),
                textAlign: TextAlign.left,
              ),
              Buffer(30),
              Text(
                "Operating Systems",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: descriptionSize),
                textAlign: textAlignment,
              ),
              Buffer(30),
              Text(
                "- Proficient in Windows and Linux with knowledge of Mac OS",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: descriptionSize * .8),
                textAlign: TextAlign.left,
              ),
              Buffer(120),
              SpanningBanner(textAlignment, descriptionSize, "Experience"),
              Buffer(30),
              Text(
                "Junior Software Engineer, Societe General - Summer 2021",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: descriptionSize),
                textAlign: textAlignment,
              ),
              Buffer(30),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: descriptionSize * .8),
                textAlign: TextAlign.left,
              ),
              Buffer(80),
              Text(
                "Personal Python Tutor, ONLINE — Summer 2020",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: descriptionSize),
                textAlign: textAlignment,
              ),
              Buffer(30),
              Text(
                "Instructing a SUNY Binghamton student through his summer 100 level Python course (CS110). Topics include GUI programming, Pygame, user interaction, manipulating strings and other introductory and rudimentary programming skills. I also was helping him explore alternate solutions and encouraging more diverse solutions as we would often evaluate many means of solving a problem, some of the solutions being out of the scope of his course.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: descriptionSize * .8),
                textAlign: TextAlign.left,
              ),
              Buffer(80),
              Text(
                "Personal Math Tutor, Huntington Station, New York — 2017 - January 2020",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: descriptionSize),
                textAlign: textAlignment,
              ),
              Buffer(30),
              Text(
                "Providing accurate and meaningful instruction to improve math skills of children ranging from 5th through 8th grade. Helping students understand complex problems with ease and encouraging a deeper learning of the math they study.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: descriptionSize * .8),
                textAlign: TextAlign.left,
              ),
              Buffer(80),
              Text(
                "Suffolk Soccer Interleague, Suffolk County, New York — Certified Soccer Referee — September 2014 - PRESENT",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: descriptionSize),
                textAlign: textAlignment,
              ),
              Buffer(30),
              Text(
                "Exercising excellent communication skills, navigating difficult situations, and employing patience. Establishing clear benchmarks for performance and monitoring individual and team progress. Proactively teaching rules and strategies to athletes, which especially assists the younger players who are just beginning to play soccer.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: descriptionSize * .8),
                textAlign: TextAlign.left,
              ),
              Buffer(80),
              Text(
                "South Huntington Public Library, S. Huntington, New York— Administrator of Homework Help— Sept. 2015-Jun 2019",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: descriptionSize),
                textAlign: textAlignment,
              ),
              Buffer(30),
              Text(
                "Maintained the leading role as administrator and continuously volunteered in a community service program held at the local public library that helps kids from 1st through 6th grades with homework in a variety of subjects, such as English, math, and science",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: descriptionSize * .8),
                textAlign: TextAlign.left,
              ),
              Buffer(120),
              SpanningBanner(textAlignment, descriptionSize, "Projects"),
              Buffer(30),
              Text(
                "Grade Scoring Website",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: descriptionSize),
                textAlign: textAlignment,
              ),
              Buffer(30),
              Text(
                "Programmed a calculator that evaluates the potential AP Language and Composition Score, based on values the user inputs into the GUI in the form of sliders. This program continues to be utilized by 100+ students yearly since its inception in 2018.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: descriptionSize * .8),
                textAlign: TextAlign.left,
              ),
              Hyperlink("Visit me", 60, descriptionSize, textAlignment,
                  "https://ap-lang-scorer-jeremy.glitch.me"),
              Buffer(30),
              Text(
                "PC Builds",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: descriptionSize),
                textAlign: textAlignment,
              ),
              Buffer(30),
              Text(
                "Built 8 computers using off the shelf compoents and repair/refurbish/modify old desktop and laptop computers to give them a second life cycle.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: descriptionSize * .8),
                textAlign: TextAlign.left,
              ),
              Buffer(120),

              SpanningBanner(textAlignment, descriptionSize,
                  "Technologies Used To Build This Site"),
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/flutter_logo.png',
                      height: 200,
                      width: 200,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 40),
                      child: Hyperlink("Flutter", 60, descriptionSize,
                          textAlignment, "https://flutter.dev/"),
                    ),
                  ],
                ),
              ),
              Buffer(30),
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/firebase_logo.png',
                      height: 200,
                      width: 200,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 80),
                      child: Hyperlink("Firebase", 60, descriptionSize,
                          textAlignment, "https://firebase.google.com/"),
                    ),
                  ],
                ),
              ),
              Buffer(120),
              SpanningBanner(textAlignment, descriptionSize, "More About Me"),
              Buffer(30),
              Text(
                "What do I do when I’m not programming?",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: descriptionSize),
                textAlign: textAlignment,
              ),
              Buffer(30),
              Text(
                getAboutMeBio(),
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.7,
                ),
                textAlign: textAlignment,
              ),
              Buffer(30),
              Image.asset(
                "assets/beach.jpg",
                scale: 3,
              ),
              Buffer(
                  sizingInformation.deviceScreenType != DeviceScreenType.desktop
                      ? 30
                      : 0),
              Image.asset(
                "assets/dock.jpg",
                scale: 3,
              ),
              Buffer(50),
              Buffer(120),
              SpanningBanner(textAlignment, descriptionSize, "Awards"),
              Image.asset(
                'assets/fotls.png',
                scale: .8,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(25),
                  child: TextButton(
                    child: Text(
                      "Click here to view my resume",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: descriptionSize,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: EdgeInsets.all(30),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      locator<NavigationService>().navigateTo(ResumeRoute);
                    },
                  ),
                ),
              ),
              //ScholarshipsAndAwards(),
            ],
          ) //),
          );
    }));
  }
}
