import 'package:flutter/material.dart';
import 'package:implicit_animations/screens/home_screen.dart';
import 'package:implicit_animations/screens/implicit_animation_game_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animations',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '${HomeScreen.screenID}': (context) => HomeScreen(),
        '${ImplicitAnimationGameScreen.screenID}': (context) => ImplicitAnimationGameScreen()
      },
      initialRoute: '${HomeScreen.screenID}',
    );
  }
}
