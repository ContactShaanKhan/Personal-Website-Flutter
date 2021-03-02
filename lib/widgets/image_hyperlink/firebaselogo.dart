import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FirebaseLogo extends StatelessWidget {
  const FirebaseLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double imageSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 75
              : 100;

      return SizedBox(
        height: imageSize,
        width: imageSize,
        child: Image.asset(
          'assets/firebase_logo.png',
          height: imageSize,
          width: imageSize,
        ),
      );
    });
  }
}
