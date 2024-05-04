import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shumomer/main.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    String? thisRoute() => ModalRoute.of(context)?.settings.name;

    activeButtonColor(String route) {
      if (route == thisRoute()) {
        return const Color.fromARGB(255, 230, 230, 230);
      }
      return Colors.transparent;
    }

    return Row(
      children: [
        Material(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {},
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              height: 85,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Icon(Icons.save_outlined),
              ),
            ),
          ),
        ),
        Material(
          color: activeButtonColor(AllRoutes.home),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () async {
              if (thisRoute() != "/") {
                Navigator.of(context).pushNamed("/");
              }
              if (thisRoute() == "/" &&
                  await Permission.microphone.status.isDenied) {
                await Permission.microphone.request();
              } else {
                print(await Permission.microphone.status);
              }
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              height: 85,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Icon(Icons.mic_none_sharp),
              ),
            ),
          ),
        ),
        Material(
          color: activeButtonColor(AllRoutes.saves),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              if (thisRoute() != "/saves") {
                Navigator.of(context).pushNamed("/saves");
              }
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              height: 85,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Icon(Icons.list),
              ),
            ),
          ),
        ),
        Material(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {},
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              height: 85,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Icon(Icons.timer_outlined),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
