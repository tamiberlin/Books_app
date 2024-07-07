import 'package:books_app/model/model.dart';
import 'package:books_app/screen/home_screen.dart';
import 'package:books_app/screen/intro_screen2.dart';
import 'package:flutter/material.dart';
import 'screen/intro_screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = true;
  void toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
        home: HomeScreen(
          isDarkMode: isDarkMode,
          toggleDarkMode: toggleDarkMode,
        ));
  }
}

List<Book> cart = [];
