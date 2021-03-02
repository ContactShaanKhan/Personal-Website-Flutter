import 'package:flutter/material.dart';
import 'package:resume_application/routing/route_names.dart';
import 'package:resume_application/views/home/home_view.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                NavBarLogo(),
                Row(
                  //mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    NavBarItem('Home', HomeRoute),
                    NavBarItem('Contact Me', ContactRoute),
                    NavBarItem('About', AboutRoute),
                  ],
                )
              ],
            )),
        Divider(
          color: Colors.black,
          height: 20,
          thickness: 2,
          indent: 10,
          endIndent: 10,
        ),
      ],
    );
  }
}
