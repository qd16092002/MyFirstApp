import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/home/components/transactions.dart';
import 'package:untitled/screens/home/tab2/new_transactions.dart';
import 'newbox.dart';

class BackGround extends StatelessWidget {
  const BackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height,
          color: background2,
          // margin: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Your Balance',
                  softWrap: true,
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color: Colors.blueGrey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  '\$547,000.00',
                  softWrap: true,
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
               const Box(),
              const SizedBox(
                height: 30,
              ),
              const NewTransactions(),
            ],
          ),
        )
      ],
    );
  }
}
