import 'package:flutter/material.dart';
import 'package:implicit_animations/screens/animated_container_screen.dart';
import 'package:implicit_animations/screens/curves_screen.dart';
import 'package:implicit_animations/screens/duration_screen.dart';
import 'package:implicit_animations/screens/expanded_magic_screen.dart';
import 'package:implicit_animations/screens/implicit_animation_game_screen.dart';
import 'package:implicit_animations/screens/implicitly_animated_widgets_screen.dart';
import 'package:implicit_animations/screens/tween_animation_builder_screen.dart';
import 'package:implicit_animations/widgets/custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              height: AppBar().preferredSize.height + MediaQuery.of(context).padding.top,
              width: double.infinity,
              color: Colors.blueGrey,
              padding: EdgeInsets.only(left: 18, bottom: 18),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Implicit Animations',
                  style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            CustomListTile(
              onTap: () {
                Navigator.pushNamed(context, ImplicitAnimationGameScreen.screenID);
              },
              title: 'Implicit Animation Game',
            ),
            CustomListTile(
              onTap: () {
                Navigator.pushNamed(context, AnimatedContainerScreen.screenID);
              },
              title: 'Animated Container',
            ),
            CustomListTile(
              onTap: () {
                Navigator.pushNamed(context, ImplicitlyAnimatedWidgetsScreen.screenID);
              },
              title: 'Implicitly Animated Widgets',
            ),
            CustomListTile(
              onTap: () {
                Navigator.pushNamed(context, CurvesScreen.screenID);
              },
              title: 'Curves',
            ),
            CustomListTile(
              onTap: () {
                Navigator.pushNamed(context, DurationScreen.screenID);
              },
              title: 'Duration',
            ),
            CustomListTile(
              onTap: () {
                Navigator.pushNamed(context, ExpandedMagicScreen.screenID);
              },
              title: 'Expanded Magic',
            ),
            CustomListTile(
              onTap: () {
                Navigator.pushNamed(context, TweenAnimationBuilderScreen.screenID);
              },
              title: 'Tween Animation Builder',
            ),
          ],
        ),
      ),
    );
  }
}
