import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_application/routing/route_names.dart';
import 'package:resume_application/views/about/about_view.dart';
import 'package:resume_application/views/about/pdf_viewer.dart';
import 'package:resume_application/views/contact/contactView.dart';
import 'package:resume_application/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), 5); //4

    case AboutRoute:
      return _getPageRoute(AboutView(), 5); //2

    case ContactRoute:
      return _getPageRoute(ContactView(), 5); //4

    case ResumeRoute:
      return _getPageRoute(PdfViewer(), 5); //2

    default:
      return _getPageRoute(HomeView(), 5); //4
  }
}

PageRoute _getPageRoute(Widget child, int selection) {
  switch (selection) {
    case 1:
      {
        return _FadeRoute(
          child: child,
        );
      }
      break;
    case 2:
      {
        return _SlideRightRoute(
          page: child,
        );
      }
      break;
    case 3:
      {
        return _SizeRoute(
          page: child,
        );
      }
      break;

    case 4:
      {
        return _SlideLefttRoute(page: child);
      }
      break;

    case 5:
      {
        return MaterialPageRoute(builder: (context) => child);
      }
      break;

    case 6:
      {
        return CupertinoPageRoute(builder: (context) => child);
      }
      break;

    default:
      {
        return _SlideLefttRoute(page: child);
      }
  }
}

class _SizeRoute extends PageRouteBuilder {
  final Widget page;
  _SizeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              Align(
            child: SizeTransition(
              sizeFactor: animation,
              child: child,
            ),
          ),
        );
}

class _SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  _SlideRightRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class _SlideLefttRoute extends PageRouteBuilder {
  final Widget page;
  _SlideLefttRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
