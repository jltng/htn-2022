// import 'package:flutter/material.dart';
// import 'dart:math';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int count = 0;
//
//   @override
//   void initState() {
//     // TODO: fetch data from Firebase
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       appBar: AppBar(
//       backgroundColor: Colors.green,
//       title: const Text('Flutter is Fun!'),
//     ),
//     //   body: ElevatedButton(
//     //     child: Text('Navigate'),
//     //     onPressed: () {
//     //       Navigator.push(
//     //         context,
//     //         MaterialPageRoute(
//     //           builder: (_) => AboutScreen(),
//     //       ),
//     //     );
//     //   }
//     // )
//     // floatingActionButton: FloatingActionButton(
//     //   child: Icon(Icons.add),
//     //   onPressed: () {
//     //     setState(() {
//     //       count++;
//     //     });
//     //   },
//     // ),
//     // body: Center(
//     //     child: Text(
//     //   '$count',
//     //   style: TextStyle(fontSize: 60),
//     // ))));
//   }
// }
// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Colors.green,
// //           title: const Text('Flutter is Fun!'), // top 'nav' bar
// //       ),
// //
// //       // infinite scrolling of random coloured squares
// //       // body: ListView.builder(
// //       //   itemBuilder: (_, index) {
// //       //     return Container(
// //       //       color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
// //       //       width: 500,
// //       //       height: 500,
// //       //
// //       //     );
// //       //   },
// //       )
// //       body: Stack(
// //         children: [
// //           Container(
// //             color: Colors.red, // red square thing
// //             width: 100,
// //             height: 100,
// //           ),
// //           Align(
// //             child: Icon(Icons.verified),
// //             alignment: Alignment.center, // checkmark is centered
// //           )
// //           // Positioned(
// //           //   child: Icon(Icons.verified),
// //           //   top: 25,
// //           //   left: 25,
// //           // )
// //         ],
// //       ),
// //
// //       floatingActionButton: FloatingActionButton(
// //         child: Icon(Icons.add),
// //         onPressed: () {
// //           print('pressed!');
// //         },
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         items: const [
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home),
// //             label: 'Home',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.business),
// //             label: 'Business',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.school),
// //             label: 'School',
// //           ),
// //         ],
// //       ),
// //
// //       drawer: Drawer(  // this is the left sidebar
// //         child: Text('Yo!'),
// //       ),
//
//     ));
//   }
// }