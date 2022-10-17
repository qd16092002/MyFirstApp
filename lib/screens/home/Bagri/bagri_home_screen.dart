import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/screens/home/Bagri/addlist.dart';
import 'package:untitled/screens/home/Bagri/work.dart';
import 'color.dart';

import 'bagri_body.dart';



class BAgriScreen extends StatefulWidget {
  const BAgriScreen({Key? key}) : super(key: key);

  @override
  State<BAgriScreen> createState() => _BAgriScreenState();
}

class _BAgriScreenState extends State<BAgriScreen> {
  // int _counter = 0;
  // List<Widget> listWidgetInListView = [
  //   const Work(namework: 'hello',),
  // ];

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //     listWidgetInListView.add(const Work(namework: 'Hello'));
  //   });
  // }
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
 //     appBar: buildAppBar(),
      body: const SafeArea(
        child: BAgriBody(),
      ),
    );
  }

  // AppBar buildAppBar() {
  //   return AppBar(
  //     backgroundColor: const Color(0xFF4F7FFA),
  //     elevation: 1,
  //     leading: IconButton(
  //       icon: const Icon(Icons.add_circle_sharp, color: ColorOfTheicon),
  //       tooltip: 'icon',
  //       onPressed: () {
  //         _incrementCounter();
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
  //}
}


