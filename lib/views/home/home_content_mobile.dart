import 'package:flutter/material.dart';
import 'package:resume_application/widgets/call_to_action/call_to_action.dart';
import 'package:resume_application/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          //include photo here
          CourseDetails(),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
