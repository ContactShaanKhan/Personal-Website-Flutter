import 'package:flutter/material.dart';
import 'package:resume_application/constants/app_colors.dart';
import 'package:resume_application/locator.dart';
import 'package:resume_application/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      hoverColor: primaryColor,
      padding: EdgeInsets.all(25),
      splashColor: Colors.lightGreenAccent,
      shape: StadiumBorder(),
      onPressed: () {
        //TO BE CHANGED
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
