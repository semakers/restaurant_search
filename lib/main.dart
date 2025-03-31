import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_interview/create_dio.dart';
import 'package:flutter_interview/restaurant_search/infrastructure/api/restaurant_api.dart';
import 'package:flutter_interview/restaurant_search/ui/screens/search_screen/restaurant_search_screen.dart';

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
      home: RepositoryProvider<RestaurantApi>(
        create: (context) => RestaurantApi(
          createDio(),
        ),
        child: const RestaurantSearchScreen(),
      ),
    );
  }
}
