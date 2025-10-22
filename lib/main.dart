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
      body: GridView.builder(
        itemBuilder: (context, index) {
          return Container(color: colorlist[index]);
        },
        itemCount: colorlist.length,

        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 5,
        //   crossAxisSpacing: 5,
        //   mainAxisSpacing: 5,
        // ),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
      ),
    );
  }
}
