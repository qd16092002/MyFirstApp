import 'package:flutter/material.dart';
import 'package:untitled/screens/home/Bagri/background.dart';
// import 'package:untitled/screens/home/Bagri/weather.dart
import 'package:untitled/screens/home/Bagri/weather_page.dart';
import 'package:untitled/screens/home/Bagri/worklist.dart';

class BAgriBody extends StatelessWidget {
  const BAgriBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  <Widget>[
        BackGroundBAgri(),
        WeatherPage(),
        WorkList(),
        ],
    );
  }
}
