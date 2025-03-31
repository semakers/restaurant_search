import 'package:flutter/material.dart';
import 'package:flutter_interview/restaurant_search/ui/screens/restaurant_search_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        primaryColor: Colors.black,
        brightness: Brightness.light,
      ),
      home: const RestaurantSearchScreen(),
    );
  }
}
