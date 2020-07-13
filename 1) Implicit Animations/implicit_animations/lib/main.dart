import 'package:flutter/material.dart';
import 'package:implicit_animations/screens/animated_container_screen.dart';
import 'package:implicit_animations/screens/curves_screen.dart';
import 'package:implicit_animations/screens/duration_screen.dart';
import 'package:implicit_animations/screens/expanded_magic_screen.dart';
import 'package:implicit_animations/screens/home_screen.dart';
import 'package:implicit_animations/screens/implicit_animation_game_screen.dart';
import 'package:implicit_animations/screens/implicitly_animated_widgets_screen.dart';
import 'package:implicit_animations/screens/tween_animation_builder_screen.dart';

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
        HomeScreen.screenID: (context) => HomeScreen(),
        ImplicitAnimationGameScreen.screenID: (context) => ImplicitAnimationGameScreen(),
        AnimatedContainerScreen.screenID: (context) => AnimatedContainerScreen(),
        ImplicitlyAnimatedWidgetsScreen.screenID: (context) => ImplicitlyAnimatedWidgetsScreen(),
        CurvesScreen.screenID: (context) => CurvesScreen(),
        DurationScreen.screenID: (context) => DurationScreen(),
        ExpandedMagicScreen.screenID: (context) => ExpandedMagicScreen(),
        TweenAnimationBuilderScreen.screenID: (context) => TweenAnimationBuilderScreen()
      },
      initialRoute: '${HomeScreen.screenID}',
    );
  }
}
