import 'package:flutter/material.dart';
import 'package:resume_application/constants/app_colors.dart';

class SpanningBanner extends StatelessWidget {
  final textAlignment;
  final descriptionSize;
  final text;

  const SpanningBanner(this.textAlignment, this.descriptionSize, this.text);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SafeArea(
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: descriptionSize,
                  color: Colors.black,
                ),
                textAlign: textAlignment,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
