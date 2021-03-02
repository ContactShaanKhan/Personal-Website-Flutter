import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume_application/widgets/image_hyperlink/hyperlink.dart';

class ImageHyperLink extends StatelessWidget {
  final String name;
  final Widget sizedBox;
  final url;
  const ImageHyperLink(this.name, this.sizedBox, this.url);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                ? TextAlign.left
                : TextAlign.center;

        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;

        double widthSize;

        switch (sizingInformation.deviceScreenType) {
          case DeviceScreenType.mobile:
            {
              widthSize = 40;
            }
            break;
          case DeviceScreenType.tablet:
            {
              widthSize = 60;
            }
            break;
          case DeviceScreenType.desktop:
            {
              widthSize = 100;
            }
            break;
          default:
            {
              widthSize = 40;
            }
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            sizedBox,
            //SizedBox(
            //  width: widthSize,
            //),
            Hyperlink(name, widthSize, descriptionSize, textAlignment, url)
          ],
        );
      },
    );
  }
}
