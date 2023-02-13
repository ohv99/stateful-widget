// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'KindaCode.com',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // the text entered by the user
  String enteredText = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(children: [
            // The TextField that lets the user type something in
            TextField(
              onChanged: (value) {
                setState(() {
                  enteredText = value;
                });
              },
            ),

            // Adding some vertical space
            const SizedBox(height: 30),
            // Display the text entered by the user
            Text(
              enteredText,
              style: const TextStyle(fontSize: 30),
            ),
          ]),
        ),
      ),
    );
  }
}
