
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/home/Bagri/bagri_home_screen.dart';
import 'package:untitled/screens/home/Json%20training/test.dart';
import 'package:untitled/screens/home/components/home_screen.dart';
import 'package:untitled/screens/home/tab1/home_screen.dart';
import 'package:untitled/screens/home/tab2/new_home_screen.dart';
import 'package:untitled/screens/home/tab3/home_screen_3.dart';
import 'package:untitled/use_json.dart';

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
      home: //const BAgriScreen(),
      JsonPage(),
      routes: {
        '/newhome':(_)=> const NewHomeScreen(),
         '/myhomepage':(_)=> MyHomePage(title: 'Hello',),
        '/back':(_)=> const HomeScreen(),
      },
      //HomeScreen(),
    );
  }
}

//
//
// import 'package:flutter/material.dart';
// import 'package:untitled/screens/home/todo/todo_list_container.dart';
//
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Scaffold(
//           appBar: AppBar(title: const Text('Todo List'),),
//           body: const TodoListContainer(),
//         )
//     );
//   }
// }
//
//
