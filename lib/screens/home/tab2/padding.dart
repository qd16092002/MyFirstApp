import 'package:flutter/material.dart';

class OkPadding extends StatelessWidget {
  const OkPadding(
      {Key? key,
      required this.title,
      required this.title2,
      required this.money,
      required this.iconData,
      required this.colors})
      : super(key: key);
  final String title;
  final String title2;
  final int money;
  final IconData iconData;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 30, bottom: 10, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Row(
              children: [
                Icon(
                  iconData,
                  size: 50,
                  color: colors,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title,
                        style:
                            const TextStyle(fontSize: 25, color: Colors.black)),
                    Text(title2,
                        style: const TextStyle(
                            fontSize: 15, color: Colors.blueGrey)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: Text(
              '\$$money',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
