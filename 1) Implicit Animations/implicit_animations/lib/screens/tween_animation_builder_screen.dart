import 'package:flutter/material.dart';
import 'package:implicit_animations/widgets/custom_drawer.dart';

class TweenAnimationBuilderScreen extends StatefulWidget {
  static final String screenID = "/TweenAnimationBuilderScreen";

  @override
  _TweenAnimationBuilderScreenState createState() => _TweenAnimationBuilderScreenState();
}

class _TweenAnimationBuilderScreenState extends State<TweenAnimationBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tween Animation Builder',
        ),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
