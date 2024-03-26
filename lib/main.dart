import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';
import 'dashboard.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      routes:
      {
        '/': (context) => Home(),
        '/profile': (context) => Profile(),
        '/dashboard': (context) => Dashboard(),
      },
    );
  }
}

