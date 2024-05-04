import 'package:flutter/material.dart';
import 'package:shumomer/screens/home.dart';
import 'package:shumomer/screens/info.dart';
import 'package:shumomer/screens/saves.dart';
import 'package:shumomer/screens/settings.dart';

class AllRoutes {
  static const String home = "/";
  static const String saves = "/saves";
  static const String info = "/info";
  static const String settings = "/settings";
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        AllRoutes.home: (context) => const Home(),
        AllRoutes.saves: (context) => const Saves(),
        AllRoutes.info: (context) => const Info(),
        AllRoutes.settings: (context) => const Settings(),
      },
      initialRoute: "/",
    );
  }
}
