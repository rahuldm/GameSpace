import 'package:game_space/developer_screen.dart';
import 'package:game_space/homepage.dart';
import 'package:game_space/snakegamefield.dart';
import 'package:game_space/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
      routes: {
        HomePage.ROUTE_NAME: (context) => HomePage(),
        DeveloperScreen.ROUTE_NAME: (context) => DeveloperScreen(),
        GameField.ROUTE_NAME: (context) => GameField(),
      },
    );
  }
}
