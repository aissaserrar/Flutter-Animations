import 'package:flutter/material.dart';
import 'package:implicit_animations/widgets/custom_drawer.dart';

class ExpandedMagicScreen extends StatefulWidget {
  static final String screenID = "/ExpandedMagicScreen";

  @override
  _ExpandedMagicScreenState createState() => _ExpandedMagicScreenState();
}

class _ExpandedMagicScreenState extends State<ExpandedMagicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Expanded Magic',
        ),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
