import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/routes.dart';
import 'package:project1/utils/Colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backGround,
    useMaterial3: true,
  );
  ThemeData darkTheme = ThemeData(
    useMaterial3: true,
  );

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: AppRoutes.allRoutes,
      initialRoute: AppRoutes.homeView,
      debugShowCheckedModeBanner: false,
    );
  }
}
