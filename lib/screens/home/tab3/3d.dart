import 'package:flutter/material.dart';

class Button3d extends StatelessWidget {
  const Button3d({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(Icons.add_box),
              Text('Hello'),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(Icons.add_box),
            ],
          ),
        ),
      ],
    );
  }
}
