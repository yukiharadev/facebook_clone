import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffd1d1d1)),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
