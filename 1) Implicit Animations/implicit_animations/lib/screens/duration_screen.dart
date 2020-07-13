import 'package:flutter/material.dart';
import 'package:implicit_animations/widgets/custom_drawer.dart';

class DurationScreen extends StatefulWidget {
  static final String screenID = "/DurationScreen";

  @override
  _DurationScreenState createState() => _DurationScreenState();
}

class _DurationScreenState extends State<DurationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Duration',
        ),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
