import 'package:flutter/material.dart';
import 'package:resume_application/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  }),
              NavBarLogo()
            ],
          ),
        ),
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
