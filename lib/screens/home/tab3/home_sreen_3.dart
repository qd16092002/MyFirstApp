import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/screens/home/tab3/body_3.dart';

import 'flip/flip_bar_item.dart';
import 'flip/flip_box_bar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const SafeArea(
        child: Body_3(),
      ), //
      bottomNavigationBar: FlipBoxBar(
        selectedIndex: selectedIndex,
        items: [
          FlipBarItem(
              icon: const Icon(Icons.home),
              text: const Text("Home"),
              frontColor: Colors.blue,
              backColor: Colors.blueAccent),
          FlipBarItem(
              icon: const Icon(Icons.person),
              text: const Text("Person"),
              frontColor: Colors.cyan,
              backColor: Colors.cyanAccent),
          FlipBarItem(
              icon: const Icon(Icons.map),
              text: const Text("Map"),
              frontColor: Colors.orange,
              backColor: Colors.orangeAccent),
        ],
        onIndexChanged: (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor:const Color(0xFF3A9EC0),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.white,
          size: 30,
        ),
        tooltip: 'Back',
        onPressed: () {
          Navigator.pop(context);
        },
        iconSize: 40,
        color: Colors.black,
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.notifications_none_rounded,
            color: Colors.white,
          ),
          tooltip: "Thông báo",
          onPressed: () {
            if (kDebugMode) {
              print('Thông báo');
            }
          },
          iconSize: 40,
          color: Colors.black,
        ),
      ],
    );
  }
}
