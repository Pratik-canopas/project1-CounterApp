import 'package:project1/Views/HomeView/homeView.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static String homeView = "/";

  static Map<String, Widget Function(BuildContext)> allRoutes = {
    homeView: (context) => const HomeView(),
  };
}
