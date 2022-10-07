import 'package:flutter/material.dart';

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
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/newhome');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        height: 145,
                        width: 145,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const Icon(
                              Icons.monetization_on,
                              size: 55,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Expanded(child: Text(
                                  'Transactionsssssssssssssssssssss',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),softWrap: false,maxLines: 1,
                                ),)
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  '7 Items',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/myhomepage');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        height: 145,
                        width: 145,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Icon(
                              Icons.temple_buddhist,
                              size: 55,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Expanded(child: Text(
                                  'Budget',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),softWrap: false,maxLines: 1,
                                ),)
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  '4 Items',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: 145,
                      width: 145,
                      decoration: BoxDecoration(
                        color: Colors.yellow[800],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Icon(
                            Icons.stars_rounded,
                            size: 55,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Recommendationssssssssssssssss',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                  softWrap: false,
                                  maxLines: 1,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                '6 Items',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: 145,
                      width: 145,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Icon(
                            Icons.credit_card_sharp,
                            size: 55,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Expanded(child: Text(
                                'Credit Cards',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),softWrap: false,maxLines: 1,
                              ),)
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                '3 Cards',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ],
                          ),
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
