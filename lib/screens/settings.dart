import 'package:flutter/material.dart';
import 'package:shumomer/bottom_bar/bottom_bar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Settings"),
      bottomNavigationBar: BottomBar(),
    );
  }
}
