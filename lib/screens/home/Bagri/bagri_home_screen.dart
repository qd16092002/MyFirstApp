import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/screens/home/Bagri/work.dart';
import 'color.dart';

import 'bagri_body.dart';

class BAgriScreen extends StatefulWidget {
  const BAgriScreen({Key? key}) : super(key: key);

  @override
  State<BAgriScreen> createState() => _BAgriScreenState();
}

class _BAgriScreenState extends State<BAgriScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const SafeArea(
        child: BAgriBody(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF4F7FFA),
      elevation: 1,
      leading: IconButton(
        icon: const Icon(Icons.add_circle_sharp, color: ColorOfTheicon),
        tooltip: 'Add Work',
        onPressed: () {
          if (kDebugMode) {
            print('Add Work');
          }
        },
        iconSize: 44,
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
          iconSize: 45,
          color: Colors.white,
        ),
      ],
    );
  }
}
