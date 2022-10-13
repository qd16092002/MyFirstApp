import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/home/Bagri/background.dart';
import 'package:untitled/screens/home/Bagri/weather.dart';
import 'package:untitled/screens/home/Bagri/worklist.dart';
import 'package:untitled/screens/home/components/choose.dart';
import 'package:untitled/screens/home/components/transactions.dart';


class BAgriBody extends StatelessWidget {
  const BAgriBody({super.key});
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Stack(
        children:  const <Widget>[
          BackGroundBAgri(),
          Weather(),
          WorkList(),
        ],
    );
  }
}
