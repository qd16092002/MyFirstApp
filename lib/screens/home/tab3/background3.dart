import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/home/components/transactions.dart';
import 'package:untitled/screens/home/tab2/new_transactions.dart';
import 'package:untitled/screens/home/tab3/choosetransport.dart';
import 'package:untitled/screens/home/tab3/searchbox.dart';

class BackGround3 extends StatelessWidget {
  const BackGround3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height,
          color: const Color(0xFF3A9EC0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 70),
                        child: Text(
                          'Hello',
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'John Doe',
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.circle,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                  padding:EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Where you will go',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SearchBox3(),
              const SizedBox(
                height: 30,
              ),
              const ChoseTransport(),
            ],
          ),
        )
      ],
    );
  }
}
