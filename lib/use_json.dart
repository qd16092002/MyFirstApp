import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class JsonPage extends StatefulWidget {
  const JsonPage({super.key});

  @override
  _JsonPageState createState() {
    return _JsonPageState();
  }
}

class _JsonPageState extends State<JsonPage> {
  late String name = "";
  late int postId;
  late int id;
  late String email = "";
  late String body = "";

  Future<String> getInformationWeather() async {
    Dio dio = Dio();
    var res = await dio.get('https://jsonplaceholder.typicode.com/comments');
    setState(() {
      name = res.data[0]["name"];
      postId = res.data[0]["postId"];
      id = res.data[0]["id"];
      email = res.data[0]["email"];
      body = res.data[0]["body"];
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name),
          const SizedBox(
            height: 30,
          ),
          Text(body),
          const SizedBox(
            height: 20,
          ),
          Text("$id"),
          const SizedBox(
            height: 20,
          ),
          Text(email),
          const SizedBox(
            height: 20,
          ),
          Text("$postId")
        ],
      ),
    );
  }
}
