import 'package:flutter/material.dart';
import 'package:implicit_animations/widgets/custom_drawer.dart';

class CurvesScreen extends StatefulWidget {
  static final String screenID = "/CurvesScreen";

  @override
  _CurvesScreenState createState() => _CurvesScreenState();
}

class _CurvesScreenState extends State<CurvesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Curves',
        ),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
