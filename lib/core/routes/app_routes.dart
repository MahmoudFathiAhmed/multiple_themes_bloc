import 'package:flutter/material.dart';
import 'package:multiple_themes_bloc/core/routes/routes_names.dart';
import 'package:multiple_themes_bloc/presentation/home_page.dart';
import 'package:multiple_themes_bloc/presentation/setting_page.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case Routes.settingRoute:
        return MaterialPageRoute(builder: (context) => const SettingsPage());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (context) => const Scaffold(
              body: Center(
                child: Text(
                  RoutesStrings.noRouteFound,
                  style: TextStyle(color: Colors.pink),
                ),
              ),
            ));
  }
}
