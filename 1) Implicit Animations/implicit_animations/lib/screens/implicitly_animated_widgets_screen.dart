import 'package:flutter/material.dart';
import 'package:implicit_animations/widgets/custom_drawer.dart';

class ImplicitlyAnimatedWidgetsScreen extends StatefulWidget {
  static final String screenID = "/ImplicitlyAnimatedWidgetsScreen";

  @override
  _ImplicitlyAnimatedWidgetsScreenState createState() => _ImplicitlyAnimatedWidgetsScreenState();
}

class _ImplicitlyAnimatedWidgetsScreenState extends State<ImplicitlyAnimatedWidgetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Implicitly Animated Widgets',
        ),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
