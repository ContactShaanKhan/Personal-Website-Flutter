import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScholarshipsAndAwards extends StatelessWidget {
  const ScholarshipsAndAwards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double imageSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 75
              : 150;

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('RESUME_APPLICATION/assets/fotls.png',
              height: 150, width: 150),
          Text("Scholarship"),
        ],
      );
    });
  }
}
