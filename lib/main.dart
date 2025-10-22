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
      body: Center(
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: 'hlo ', style: TextStyle(color: Colors.amber)),
                  TextSpan(
                    text: 'Kia hal ha',
                    style: TextStyle(color: Colors.red, fontSize: 34),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
