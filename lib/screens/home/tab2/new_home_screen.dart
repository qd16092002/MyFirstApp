import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'newbody.dart';

class NewHomeScreen extends StatelessWidget {
  const NewHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const SafeArea(
        child: NewBody(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF2F26D9),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.white,
          size: 30,
        ),
        tooltip: 'Back',
        onPressed: () {
          Navigator.pop(context);
        },
        iconSize: 40,
        color: Colors.black,
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.notifications_none_rounded,
            color: Colors.blueGrey,
          ),
          tooltip: "Thông báo",
          onPressed: () {
            if (kDebugMode) {
              print('Thông báo');
            }
          },
          iconSize: 40,
          color: Colors.black,
        ),
      ],
    );
  }
}
