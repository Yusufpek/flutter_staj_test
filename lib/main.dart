import 'package:flutter/material.dart';
import 'package:staj_test/Pages/MainPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.orange,
        primaryColor: Colors.orange,
        cardColor: Colors.white,
        dividerColor: Colors.orange,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.amber,
        ),
        textTheme: const TextTheme(
            titleMedium: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      ),
    );
  }
}
