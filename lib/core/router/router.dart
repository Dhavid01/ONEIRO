import 'package:oneiro/core/router/routing_constants.dart';
import 'package:oneiro/views/home.dart';

import 'package:flutter/material.dart';

class AppRouter {
  static PageRoute _getPageRoute({
    required RouteSettings settings,
    required Widget viewToShow,
  }) {
    return MaterialPageRoute(
        builder: (context) => viewToShow, settings: settings);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    Map<String, dynamic> routeArgs = settings.arguments != null
        ? settings.arguments as Map<String, dynamic>
        : {};

    switch (settings.name) {
      case NavigatorRoutes.home:
        return _getPageRoute(settings: settings, viewToShow: const Home());

      default:
        return _getPageRoute(settings: settings, viewToShow: const Scaffold());
    }
  }
}
