import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32, left: size.width * 0.075),
              child: const Text(
                'Ngày 8, tháng 10,2022',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.only(top: 32, right: size.width * 0.075),
              child: const Text(
                '3.30 PM',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 21,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.03),
              child: Image.asset(
                'assets/images/partly_cloudy.png',
                height: 220,
                width: size.width*1/2,
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hà nội',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF)),
                    softWrap: false,
                    maxLines: 1,
                  ),
                  Text(
                    '30ºC',
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF)),
                    softWrap: false,
                    maxLines: 1,
                  ),
                  Text(
                    'Có nắng',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFFFFF)),
                    softWrap: false,
                    maxLines: 1,
                  ),
                ],
              ),
            )
          ],
        ),

        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: size.width*0.075),
            child: Row(
              children: [
                Icon(Icons.circle,color: const Color(0xFFD9D9D9),size: size.width*0.05,),
                const SizedBox(width: 12,),
                const Text('68.0%',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24,color: Colors.white),)
              ],
            )
            ),
            const Expanded(child: SizedBox(),),
            Padding(padding: EdgeInsets.only(right: size.width*0.31),
              child: Row(
                children: [
                  Icon(Icons.circle,color: const Color(0xFFD9D9D9),size: size.width*0.05,),
                  const SizedBox(width: 12,),
                  const Text('3.4km/h',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24,color: Colors.white),)
                ],
              )
            ),

          ],
        )
      ],
    );
  }
}
