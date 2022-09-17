import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Icon(Icons.monetization_on,size: 50,color: Colors.white,),
                        const SizedBox(height: 10,),
                        Row(
                          children: const [
                            Text('Transactions',
                              style: TextStyle(fontSize: 15,),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('7 Items',
                              style: TextStyle(fontSize: 15,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Icon(Icons.monetization_on,size: 50,color: Colors.white,),
                        const SizedBox(height: 10,),
                        Row(
                          children: const [
                            Text('Transactions',
                              style: TextStyle(fontSize: 15,),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('7 Items',
                              style: TextStyle(fontSize: 15,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
