import 'package:flutter/material.dart';

class Choose extends StatelessWidget {
  const Choose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              Row(
                children: const [
                  Text(
                    'Choose a categories',
                    softWrap: true,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(19),
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: const <Widget>[
                              Icon(
                                Icons.other_houses_sharp,
                                size: 25,
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Row(
                                  children: const <Widget>[
                                    Text(
                                      'Branch',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: const <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 190),
                                    child: Text("Services",
                                        style: TextStyle(fontSize: 15),
                                        overflow: TextOverflow.ellipsis),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(19),
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: const <Widget>[
                              Icon(
                                Icons.payment_rounded,
                                size: 25,
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              Row(
                                children: const <Widget>[
                                  Text(
                                    'Make a',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: const <Widget>[
                                  Text(
                                    "  Payment",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
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
