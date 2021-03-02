import 'dart:async' show Future;
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume_application/text_files/Title.dart';
import 'package:resume_application/text_files/bio.dart';
import 'package:resume_application/widgets/visuals/buffer.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
              ? TextAlign.left
              : TextAlign.center;

      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 80;

      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;

      Widget img =
          (sizingInformation.deviceScreenType == DeviceScreenType.mobile ||
                  sizingInformation.deviceScreenType == DeviceScreenType.tablet)
              ? Center(
                  child: Image.asset(
                    "assets/portrait.jpg",
                    scale: 3,
                    //height: 100,
                    //width: 100,
                  ),
                )
              : Buffer(0);

      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Buffer(137),
            Text(
              getTitle(),
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: titleSize),
              textAlign: textAlignment,
            ),
            SizedBox(
              width: 50,
            ),
            Buffer(30),
            img,
            Buffer(30),
            FutureBuilder(
              future: loadAsset(),
              initialData: "Loading bio...",
              builder: (BuildContext context, AsyncSnapshot<String> text) {
                return new Text(
                  text.data,
                  style: TextStyle(
                    fontSize: descriptionSize,
                    height: 1.7,
                  ),
                  textAlign: textAlignment,
                );
              },
            ),
          ],
        ),
      );
    });
  }

  Future<String> loadAsset() async {
    try {
      String contents =
          getBio(); //await rootBundle.loadString("text_files/bio.txt");
      return contents == null ? '@null@' : contents;
    } catch (e) {
      return 'oops $e';
    }
  }
}
