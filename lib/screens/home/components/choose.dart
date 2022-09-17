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
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 60,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black)
                    ),
                    child: Column(
                      children: <Widget>[

                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 60,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black)
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
