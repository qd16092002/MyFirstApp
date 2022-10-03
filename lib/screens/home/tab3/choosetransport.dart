import 'package:flutter/material.dart';

class ChoseTransport extends StatelessWidget {
  const ChoseTransport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
      height: size.height * 0.698,
      width: size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 90),
            child: Text(
              'Choose your Transport',
              style: TextStyle(
                fontSize: 23,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 160,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFF6BC5E8),
                  ),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          const Padding(
                              padding: EdgeInsets.only(top: 20,left: 0),
                            child: Text(
                              'Bus',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40,left: 20),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFEFF1FD),
                                ),
                                onPressed: () {},
                                child: const Text('Select',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Image.asset('assets/images/bus.png',width: 180,height: 200,),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 160,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFF3A9EC2),
                  ),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(top: 20,left: 0),
                            child: Text(
                              'MRT',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40,left: 20),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEFF1FD),
                                ),
                                onPressed: () {},
                                child: const Text('Select',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Image.asset('assets/images/train.png',width: 180,height: 200,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}