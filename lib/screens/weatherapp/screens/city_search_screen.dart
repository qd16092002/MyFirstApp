import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CitySearchScreen extends StatefulWidget {
  const CitySearchScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CitySearchScreenState();
}
class _CitySearchScreenState extends State<CitySearchScreen> {
  final TextEditingController _cityTextController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enter a city'),),
      body: Form(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextFormField(
                    controller: _cityTextController,
                    decoration: const InputDecoration(
                        labelText: 'Enter a city',
                        hintText: 'Example: Chicago'
                    )
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.pop(context, _cityTextController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}