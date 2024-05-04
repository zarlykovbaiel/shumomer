import 'package:flutter/material.dart';
import 'package:shumomer/bottom_bar/bottom_bar.dart';

class Saves extends StatelessWidget {
  const Saves({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Saves"),
      bottomNavigationBar: BottomBar(),
    );
  }
}
