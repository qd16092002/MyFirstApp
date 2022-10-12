import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'color.dart';

import 'bagri_body.dart';

class BAgriScreen extends StatelessWidget {
  const BAgriScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: buildAppBar(),
      body: SafeArea(
        child: BAgriBody(),
      ),
    );
  }

  // AppBar buildAppBar() {
  //   return AppBar(
  //     backgroundColor: Color(0xFF4F7FFA),
  //     elevation: 1,
  //     leading: IconButton(
  //       icon: const Icon(Icons.circle, color: ColorOfTheicon),
  //       tooltip: 'icon',
  //       onPressed: () {
  //         if (kDebugMode) {
  //           print("icon");
  //         }
  //       },
  //       iconSize: 44,
  //       color: Colors.black,
  //     ),
  //     actions: const <Widget>[
  //       Icon(
  //         Icons.circle_notifications,
  //         color: ColorOfTheicon,
  //         size: 44,
  //       ),
  //     ],
  //   );
  // }
}
