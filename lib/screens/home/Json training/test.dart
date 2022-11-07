import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() {
    return _WeatherPageState();
  }
}

class _WeatherPageState extends State<WeatherPage> {
  late String country = "";
  late String description = "";
  late double nhietdo = 0;
  late int day=0;
  late int month=0;
  late int year =0 ;
  late int hour=0;
  late int minute=0;

  Future<String> getInformationWeather() async {
    Dio dio = Dio();

    var res = await dio.get(
        'http://api.openweathermap.org/data/2.5/weather?exclude=hourly,daily&q=hanoi&appid=11ae336e96748518e655aa2b8e31673b&lang=vi');
    //print(res.data.toString());
    print(DateTime.now());
    // print(res.data["weather"][0]["description"]);
    setState(() {
      country = res.data["name"];
      description = res.data["weather"][0]["description"];
      nhietdo = res.data["main"]["temp"].floor() - 273;
      day= DateTime.now().day;
      month= DateTime.now().month;
      year= DateTime.now().year;
      hour=DateTime.now().hour;
      minute=DateTime.now().minute;
    });

    return "";
  }

  @override
  void initState() {
    getInformationWeather();
    super.initState();
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
              child: Text(
                'Ngày $day, tháng $month,$year',
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.only(top: 32, right: size.width * 0.075),
              child: Text(
                '$hour:$minute',
                style: const TextStyle(
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
                    country ?? "",
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF)),
                    // softWrap: false,
                    // maxLines: 1,
                  ),
                  Text(
                    "$nhietdo"  "ºC",
                    style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF)),
                    softWrap: false,
                    maxLines: 1,
                  ),
                  Text(
                    description ?? "".toUpperCase(),
                    style: const TextStyle(
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
        )
      ],
    );
  }
}
