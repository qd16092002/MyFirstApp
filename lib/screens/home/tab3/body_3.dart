import 'package:flutter/material.dart';
import 'package:untitled/screens/home/tab2/background.dart';

import 'background3.dart';

class Body_3 extends StatelessWidget {
  const Body_3({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: const <Widget>[
          BackGround3(),
        ],
      ),
    );
  }
}
