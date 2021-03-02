import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Hyperlink extends StatelessWidget {
  final name;
  final widthSize;
  final descriptionSize;
  final textAlignment;
  final url;

  const Hyperlink(this.name, this.widthSize, this.descriptionSize,
      this.textAlignment, this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, left: widthSize),
      margin: EdgeInsets.all(0),
      child: TextButton(
        child: Text(
          name,
          style: TextStyle(
            fontSize: descriptionSize,
            height: 1.7,
          ),
          textAlign: textAlignment,
        ),
        onPressed: () => _launchURL(url),
      ),
    );
  }

  _launchURL(url) async {
    //const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
