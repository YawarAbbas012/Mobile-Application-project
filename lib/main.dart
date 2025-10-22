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
// all widget height and width fix 
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 100, minWidth: 100),
        child: Container(width: 12, height: 12, color: Colors.red),
      ),
    );
  }
}
