import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume_application/text_files/contact_me_bio.dart';
import 'package:resume_application/text_files/contact_title.dart';
import 'package:resume_application/widgets/image_hyperlink/emaillogo.dart';
import 'package:resume_application/widgets/image_hyperlink/githublogo.dart';
import 'package:resume_application/widgets/image_hyperlink/image_hyperlink.dart';
import 'package:resume_application/widgets/image_hyperlink/linkedInlogo.dart';
import 'package:resume_application/widgets/visuals/buffer.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
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

      return SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: 1,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Buffer(137),
                Text(
                  getContactTitle(),
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      height: 0.9,
                      fontSize: titleSize),
                  textAlign: textAlignment,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  getContactMeBio(),
                  style: TextStyle(
                    fontSize: descriptionSize,
                    height: 1.7,
                  ),
                  textAlign: textAlignment,
                ),
                SizedBox(
                  height: 30,
                ),
                ImageHyperLink("LinkedIn", LinkedInLogo(),
                    'https://www.linkedin.com/in/shaan-khan-823a771b8'),
                SizedBox(
                  height: 30,
                ),
                ImageHyperLink("GitHub", GitHubLogo(),
                    'https://github.com/ContactShaanKhan'),
                SizedBox(
                  height: 30,
                ),
                ImageHyperLink("contactshaankhan@gmail.com", EmailLogo(),
                    'https://mail.google.com/'),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
