import 'package:flutter/material.dart';
import 'package:implicit_animations/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  static final String screenID = "/";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Implicit Animations',
        ),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
