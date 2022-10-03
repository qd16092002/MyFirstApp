import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const SafeArea(
        child: Body(),
      ) ,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF3A9EC0),
      elevation: 0,
      leading: IconButton(
          icon: const Icon(Icons.menu_outlined),
          tooltip: 'Menu',
          onPressed: () {
            if (kDebugMode) {
              print("Menu");
            }
          },
        iconSize: 40,
        color: Colors.black,
          ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.circle_notifications),
          tooltip: "Thông báo",
          onPressed: () {
            if (kDebugMode) {
              print('Thông báo');
            }
          },
          iconSize: 40,
          color: Colors.black,
        ),
        IconButton(
          icon: const Icon(Icons.face),
          tooltip: "Face",
          onPressed: () {
            if (kDebugMode) {
              print('Face');
            }
          },
          iconSize: 40,
          color: Colors.black,
        ),
      ],
    );
  }
}
