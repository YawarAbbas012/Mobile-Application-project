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
      body: Row(
        children: [
          //Rich text
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.blue),
              children: [
                TextSpan(text: 'Hlo '),
                TextSpan(
                  text: 'World!',
                  style: TextStyle(color: Colors.red, fontSize: 34),
                ),

                TextSpan(
                  text: ' Flutter Development',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
