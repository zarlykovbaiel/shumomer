import 'package:flutter/material.dart';
import 'package:shumomer/bottom_bar/bottom_bar.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Info"),
      bottomNavigationBar: BottomBar(),
    );
  }
}
