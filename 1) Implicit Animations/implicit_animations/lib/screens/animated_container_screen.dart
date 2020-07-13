import 'package:flutter/material.dart';
import 'package:implicit_animations/widgets/custom_drawer.dart';

class AnimatedContainerScreen extends StatefulWidget {
  static final String screenID = "/AnimatedContainerScreen";
  @override
  _AnimatedContainerScreenState createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Animated Container',
        ),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
