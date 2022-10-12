import 'package:flutter/material.dart';
import 'package:untitled/screens/home/Bagri/weather.dart';
import 'package:untitled/screens/home/Bagri/color.dart';

class BackGroundBAgri extends StatelessWidget {
  const BackGroundBAgri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: const Color(0xFF4F7FFA),
          height: size.height,
          width: size.width,
        ),
        Positioned(
          top: -size.width/2,
          child: Opacity(
            opacity: 0.23,
            child: Container(
              padding: const EdgeInsets.all(0),
              height:size.width,
              width: size.width,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(size.width/2),
              ),
            ),
          )
        ),
        Positioned(
          top: -size.width*3/8,
          left: size.width*1/8,
          child: Opacity(
            opacity: 0.28,
            child: Container(
              padding: const EdgeInsets.all(0),
              height:size.width*3/4,
              width: size.width*3/4,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(size.width*3/8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
