import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/home/components/home_screen.dart';
import 'package:flutter/src/painting/gradient.dart';
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

// class MyAppBar extends StatelessWidget{
//   const MyAppBar({super.key, required this.title});
//   final Widget title;
//   @override
//   Widget build(BuildContext context){
//     return Container(
//       height: 56.0,
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: const BoxDecoration(color: Colors.redAccent),
//       child: Row(
//         children :<Widget>[
//         const IconButton(
//           icon: Icon(Icons.menu),
//           tooltip: "Navigation menu",
//           onPressed: null,
//
//            ),
//           Expanded(
//             child: title,
//           ),
//           const IconButton(
//             icon: Icon(Icons.search),
//             tooltip: "Search",
//             onPressed: null,
//           )
//          ],
//        ),
//     );
//   }
// }
// class MyScaffold extends StatelessWidget{
//   const MyScaffold({super.key});
//
//   @override
//   Widget build(BuildContext context){
//     return Material(
//       child: Column(
//         children: <Widget>[
//           MyAppBar(
//             title: Text(
//               'Example Title',
//               style: Theme.of(context).primaryTextTheme.titleLarge,
//             ),
//           ),
//           const Expanded(
//             child: Center(
//               child:  Text ('My first App'),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context){
//     return const Center(child:
//     Text(
//         'Hello', // This is a string
//         style:TextStyle (fontSize: 30),   // how to increase text size?
//         textDirection: TextDirection.ltr) // left to right),
//       //
//     );
//   }
// }
//

// class TutorialHome extends StatelessWidget {
//   const TutorialHome({super.key});
//   @override
//   Widget build(BuildContext context) {
//     List<String> entries = <String>['1', '2', '3'];
//     List<int> colorCodes = <int>[600, 500, 100];
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.orangeAccent,
      //   leading: IconButton(
      //       icon: const Icon(Icons.arrow_back_ios),
      //       tooltip: 'Back',
      //       onPressed: () {
      //         if (kDebugMode) {
      //           print("bbbb");
      //         }
      //       }),
      //   // title: const Center(
      //   //   child: Text('This is my first app'),
      //   // ),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: const Icon(Icons.circle_notifications),
      //       tooltip: "Thông báo",
      //       onPressed: () {
      //
      //       },
      //     ),
      //   ],
      // ),
      // body: SafeArea(
      //   child: Stack(children: [
      //     Container(
      //       decoration: const BoxDecoration(
      //         gradient: LinearGradient(
      //           colors: [
      //             Colors.blueAccent,
      //           ],
      //           begin: Alignment.topCenter,
      //           end: Alignment.bottomCenter,
      //         ),
      //       ),
      //       child: const Align(
      //           alignment: Alignment.center,
      //           child: Text('Your Balance', // This is a string
      //               style: TextStyle(fontSize: 30),
      //               // how to increase text size?
      //               textDirection: TextDirection.ltr) // left to right),
      //           ),
      //     ),
      //     // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: const <Widget>[
          //     TextField(
          //       decoration: InputDecoration(labelText: 'Content'),
          //     ),
          //     TextField(
          //       decoration: InputDecoration(labelText: 'Amount'),
          //     ),
          //   ],
          //  ),
          // ListView.separated(
          //   padding: const EdgeInsets.all(8),
          //   itemCount: entries.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return Container(
          //       height: 50,
          //
          //       color: Colors.amber[colorCodes[index]],
          //       child: Center(child: Text('Mục ${entries[index]}')),
          //     );
          //   },
          //   separatorBuilder: (BuildContext context, int index) =>
          //       const Divider(),
          // )
//         ]
//         ),
//       ),
//       // floatingActionButton: const FloatingActionButton(
//       //   tooltip: "Add",
//       //   onPressed: null,
//       //   child: Icon(Icons.add_box),
//       // ),
//     );
//   }
// }
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
    );
  }
}


