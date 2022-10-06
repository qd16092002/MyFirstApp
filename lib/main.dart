import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/home/components/home_screen.dart';
import 'package:untitled/screens/home/tab2/new_home_screen.dart';
import 'package:untitled/screens/home/tab3/home_sreen_3.dart';

void main() {
  runApp(
      // const MaterialApp(
      //   title: 'My App',
      //   home:  MyScaffold(),
      //
      // )
      const MaterialApp(
    title: "Flutter tutorial",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
      routes: {
        '/newhome':(_)=> const NewHomeScreen(),
        '/myhomepage':(_)=> MyHomePage(),
        '/back':(_)=> const HomeScreen(),
      },
      //HomeScreen(),
    );
  }
}
