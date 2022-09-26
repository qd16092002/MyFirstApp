import 'package:flutter/material.dart';
import 'package:untitled/screens/home/tab2/padding.dart';
import 'package:untitled/screens/home/tab2/titlewithcustomuderline.dart';

class NewTransactions extends StatelessWidget {
  const NewTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
      height: size.height * 0.5,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 30,left: 30,bottom: 10,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const TitleWithCustomUnderLine(text: "Transactions"),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFEFF1FD),),
                  onPressed: () {},
                  child: const Text('See All',style: TextStyle(color: Color(0xFF395376)),),
                ),
              ],
            ),
          ),
          const OkPadding(title: 'Car Purchase', title2: 'Auto Loan', money: -250, iconData: Icons.car_repair, colors: Colors.green,),
          const OkPadding(title: 'House Purchase', title2: 'Airbnb Home', money: 2250, iconData: Icons.warehouse_sharp, colors: Colors.blueAccent),
          const OkPadding(title: 'Transport', title2: 'Uber, pathao', money: 250, iconData: Icons.wallet_giftcard, colors: Colors.red),
          const OkPadding(title: 'Shopping', title2: 'Wish, Apple', money: 350, iconData: Icons.shopping_bag_rounded, colors: Color(0xFF17BCBE)),
        ],
      ),
    ));
  }
}
