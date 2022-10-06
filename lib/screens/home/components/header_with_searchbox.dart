import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 50),
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              Row(
                children: const <Widget>[
                  SizedBox(width: 10,),
                  Text('Welcome Back',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                ],
              ),
              Row(
                children: const <Widget>[
                  SizedBox(width: 10,),
                  Text('Creative Mints',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 40),
          height: 60,
          decoration: BoxDecoration(
            color: searchColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 30),
                blurRadius: 10,
                color: kPrimaryColor.withOpacity(0),
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    icon: const Icon(Icons.search),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: kPrimaryColor.withOpacity(0.8),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
