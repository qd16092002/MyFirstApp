import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  Weather({Key? key}) : super(key: key);
  late String country;
  late String hour;
  Future<String> getInformationWeather() async {
    setState(() {
      country = res.data['name'];
      hour = DateTime.now().hour as String;
    });
    Dio dio = Dio();

    var res = await dio.get('http://api.openweathermap.org/data/2.5/weather?exclude=hourly,daily&q=hanoi&appid=11ae336e96748518e655aa2b8e31673b&lang=vi') ;
    //print(res.data.toString());
    print(DateTime.now().day);
    print(res.data['main']['temp_min']);


     return "";
  }

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
              child:  const Text(
                '3:30 PM',
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
                width: size.width * 1 / 2,
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hà Nội ",
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF)),
                    // softWrap: false,
                    // maxLines: 1,
                  ),
                  const Text(
                    '30ºC',
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF)),
                    softWrap: false,
                    maxLines: 1,
                  ),
                  const Text(
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
            Padding(
                padding: EdgeInsets.only(left: size.width * 0.075),
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: const Color(0xFFD9D9D9),
                      size: size.width * 0.05,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      '68.0%',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white),
                    )
                  ],
                )),
            const Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.31),
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: const Color(0xFFD9D9D9),
                    size: size.width * 0.05,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    '3.4km/h',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () async{
            await getInformationWeather();
          },
          child: const Text("TEST GET INFORMATION WEATHER"),
        )
      ],
    );
  }
}

