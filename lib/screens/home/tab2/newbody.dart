import 'package:flutter/material.dart';
import 'package:untitled/screens/home/tab2/background.dart';
import 'package:untitled/screens/home/tab2/newbox.dart';

class NewBody extends StatelessWidget {
  const NewBody({super.key});
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children:  const <Widget>[
          BackGround(),
          
        ],
      ),
    );
  }
}

