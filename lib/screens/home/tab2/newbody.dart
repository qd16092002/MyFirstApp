import 'package:flutter/material.dart';
import 'package:untitled/screens/home/tab2/background.dart';

class NewBody extends StatelessWidget {
  const NewBody({super.key});
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children:  const <Widget>[
          BackGround(),
          
        ],
      ),
    );
  }
}

