import 'package:flutter/material.dart';

class ImplicitAnimationGameScreen extends StatefulWidget {
  static final String screenID = "/implicitAnimationGameScreen";

  @override
  _ImplicitAnimationGameScreenState createState() => _ImplicitAnimationGameScreenState();
}

class _ImplicitAnimationGameScreenState extends State<ImplicitAnimationGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Implicit Animation Game'),
      ),
    );
  }
}
