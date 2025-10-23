import 'package:flutter/material.dart';

class Navigationdata extends StatelessWidget {
  var personaldata;
  Navigationdata(this.personaldata);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Text(
          'Welcome $personaldata ',
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
