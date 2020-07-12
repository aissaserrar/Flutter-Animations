import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static final String screenID = "/";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Implicit Animations',
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
            top: 18,
            bottom: 18,
          ),
          children: <Widget>[
            CustomListTile(
              onTap: () {},
              title: 'Implicit Animation Game',
            ),
            CustomListTile(
              onTap: () {},
              title: 'Animated Container',
            ),
            CustomListTile(
              onTap: () {},
              title: 'Implicitly Animated Widgets',
            ),
            CustomListTile(
              onTap: () {},
              title: 'Curves',
            ),
            CustomListTile(
              onTap: () {},
              title: 'Duration',
            ),
            CustomListTile(
              onTap: () {},
              title: 'Expanded Magic',
            ),
            CustomListTile(
              onTap: () {},
              title: 'Tween Animation Builder',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String title;
  final Function onTap;

  const CustomListTile({
    @required this.title,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(5),
        color: Color(0xffeeeeee),
        elevation: 3,
        child: ListTile(
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}
