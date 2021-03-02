import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume_application/locator.dart';
import 'package:resume_application/routing/route_names.dart';
import 'package:resume_application/routing/router.dart';
import 'package:resume_application/services/navigation_service.dart';
import 'package:resume_application/widgets/centered_view/centered_view.dart';
import 'package:resume_application/widgets/navigation_bar/navigation_bar.dart';
import 'package:resume_application/widgets/navigtation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
