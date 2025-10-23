import 'package:flutter/material.dart';
import 'package:wrapwidget/navigationdata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameText = TextEditingController();

    return Scaffold(
      body: Center(
        child: Container(
          width: 244,
          height: 244,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Navigator Data'),

                SizedBox(height: 20),

                TextFormField(
                  controller: nameText,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) =>
                                Navigationdata(nameText.text.toString()),
                      ),
                    );
                  },
                  child: Text('Navigation'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
