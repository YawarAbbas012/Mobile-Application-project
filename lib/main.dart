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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        direction: Axis.vertical,
        children: [
          Container(width: 200, height: 200, color: Colors.amber),

          Container(width: 200, height: 200, color: Colors.red),

          Container(width: 200, height: 200, color: Colors.black),

          Container(width: 200, height: 200, color: Colors.green),

          Container(width: 200, height: 200, color: Colors.grey),

          Container(width: 200, height: 200, color: Colors.pink),

          Container(width: 200, height: 200, color: Colors.orange),

          Container(width: 200, height: 200, color: Colors.deepPurple),

          Container(width: 200, height: 200, color: Colors.deepOrange),
        ],
      ),
    );
  }
}
