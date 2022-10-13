import 'package:flutter/material.dart';
class Work extends StatelessWidget {
  const Work(
      {Key? key,
      required this.namework})
      : super(key: key);

  final String namework;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0,13),
                    blurRadius: 10,
                    color: const Color(0x1515150D).withOpacity(0.25),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 20),
          Text(
            namework,
            style: const TextStyle(
                fontSize: 16,
                fontFamily:'Inter',
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
