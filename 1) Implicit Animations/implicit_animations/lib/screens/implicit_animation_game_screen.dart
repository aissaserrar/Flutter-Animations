import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:implicit_animations/widgets/custom_drawer.dart';

class ImplicitAnimationGameScreen extends StatefulWidget {
  static final String screenID = "/implicitAnimationGameScreen";

  @override
  _ImplicitAnimationGameScreenState createState() => _ImplicitAnimationGameScreenState();
}

class _ImplicitAnimationGameScreenState extends State<ImplicitAnimationGameScreen> {
  static final _rng = Random();
  Color _color = Colors.transparent;
  double _width = 100;
  double _height = 100;
  double _radius = 50;
  Alignment _alignment = Alignment(.5, .5);

  int _score = 0;

  void _randomize() {
    _color = Color.fromARGB(
      _rng.nextInt(255),
      _rng.nextInt(255),
      _rng.nextInt(255),
      _rng.nextInt(255),
    );

    _width = _rng.nextDouble() * 100 + 20;
    _height = _rng.nextDouble() * 100 + 20;
    _radius = _rng.nextDouble() * 50 + 10;

    _alignment = Alignment(
      _rng.nextDouble() * 2 - 1,
      _rng.nextDouble() * 2 - 1,
    );
  }

  void _increaseScore() {
    _score++;
  }

  Timer _timer;
  int _countDown = 10;
  bool _isPlaying = false;

  void _startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      setState(() {
        if (_countDown < 1) {
          _endGame();
          timer.cancel();
        } else {
          _countDown--;
        }
      });
    });
  }

  void _startGame() {
    _score = 0;
    _countDown = 10;
    _isPlaying = true;
    _randomize();
    _startTimer();
  }

  void _endGame() {
    _isPlaying = false;
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Implicit Animation Game',
        ),
      ),
      body: SafeArea(
        child: Stack(
          overflow: Overflow.clip,
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Score: $_score',
                    style: TextStyle(
                      fontSize: 48,
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _startGame();
                      });
                    },
                    child: Text(
                      'START',
                      style: TextStyle(
                        fontSize: 28,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    'Time: $_countDown',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xaa333333),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    _randomize();
                    _countDown > 0 ? _increaseScore() : _color = Colors.transparent;
                  },
                );
              },
              child: AnimatedAlign(
                duration: Duration(milliseconds: _rng.nextInt(500)),
                alignment: _alignment,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: _rng.nextInt(500)),
                  height: _height,
                  width: _width,
                  decoration: BoxDecoration(
                    color: _color,
                    borderRadius: BorderRadius.circular(_radius),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
