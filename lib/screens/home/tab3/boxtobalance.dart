import 'package:flutter/material.dart';

import '../../../constants.dart';

class BoxToBalance extends StatelessWidget {
  const BoxToBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      height: 60,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 30),
            blurRadius: 10,
            color: kPrimaryColor.withOpacity(0),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                icon: const Icon(Icons.search),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: kPrimaryColor.withOpacity(0.8),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
