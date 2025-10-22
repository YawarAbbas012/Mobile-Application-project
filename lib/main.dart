import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  var colorlist = [
    Colors.red,
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.grey,
    Colors.limeAccent,
    Colors.cyanAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisSpacing: 6,
        mainAxisSpacing: 5,
        children: [
          Container(color: colorlist[0]),
          Container(color: colorlist[1]),
          Container(color: colorlist[2]),
          Container(color: colorlist[3]),
          Container(color: colorlist[4]),
          Container(color: colorlist[5]),
          Container(color: colorlist[6]),
          Container(color: colorlist[7]),
        ],
        crossAxisCount: 3,
      ),
    );
  }
}
