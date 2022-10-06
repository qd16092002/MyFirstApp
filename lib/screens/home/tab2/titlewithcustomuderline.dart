import 'package:flutter/material.dart';


class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Stack(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text(
              "Transactions",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
