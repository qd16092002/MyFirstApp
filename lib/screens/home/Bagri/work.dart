import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work(
      {Key? key,
      required this.trai,
      required this.tren,
      required this.namework})
      : super(key: key);

  final double trai;
  final double tren;
  final String namework;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: trai, top: tren),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 137,
              width: 137,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0,13),
                    blurRadius: 10,
                    color: const Color(0x1515150D).withOpacity(0.05),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 20),
          Text(
            namework,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,),
          )
        ],
      ),
    );
  }
}
