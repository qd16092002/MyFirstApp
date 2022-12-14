import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/home/components/choose.dart';
import 'package:untitled/screens/home/components/transactions.dart';
import 'package:untitled/screens/home/tab1/transactions.dart';
import 'choose.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children:  const <Widget>[
           HeaderWithSearchBox(),
           Transactions(),
           Choose(),
        ],
      ),
    );
  }
}
