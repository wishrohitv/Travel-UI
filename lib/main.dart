import 'package:flutter/material.dart';
import 'package:travel_ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Travel UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xFF3EBACE),
          colorScheme: const ColorScheme.light().copyWith(
              primary: const Color(0xffc0e3ec),
              secondary: const Color(0xFFD5E6F1))),
      home: HomeScreen(),
    );
  }
}
