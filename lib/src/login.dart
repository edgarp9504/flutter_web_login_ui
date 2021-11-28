import 'package:flutter/material.dart';
import 'package:ui_login_web/src/dispositive/dektop/details_side.dart';
import 'package:ui_login_web/src/dispositive/dektop/swicher_side.dart';
import 'package:ui_login_web/src/dispositive/mobile/details_side_mobile.dart';
import 'package:ui_login_web/src/dispositive/mobile/swicher_side_mobile.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  double width = 200;
  double containerWidth = 200;
  double alignText = 200;
  double welcomeText = 200;
  double opacity = 200;
  double oldRange = 200;
  double newRange = 200;
  double newValue = 200;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900));
    _animation = Tween(begin: -1.0, end: 1.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutSine,
        reverseCurve: Curves.easeInOutSine));
    _controller.addListener(() {
      setState(() {
        if (_animation.value >= -1.0 && _animation.value <= 0.0) {
          oldRange = -1.0;
          newRange = 100.0;
          newValue =
              (((_animation.value - (-1.0)) * newRange) / oldRange) + 200.0;
          width = newValue;

          oldRange = -1.0;
          newRange = 150;
          newValue =
              (((_animation.value - (-1.0)) * newRange) / oldRange) + 0.0;
          containerWidth = newValue;

          oldRange = -1.0;
          newRange = -1.8;
          newValue =
              (((_animation.value - (-1.0)) * newRange) / oldRange) + 0.0;
          alignText = newValue;

          oldRange = -1.0;
          newRange = -7.0;
          newValue =
              (((_animation.value - (-1.0)) * newRange) / oldRange) + 0.0;
          welcomeText = newValue;
        } else {
          oldRange = 1.0;
          newRange = -100;
          newValue =
              (((_animation.value - (0.0)) * newRange) / oldRange) + 300.0;
          width = newValue;

          oldRange = 1.0;
          newRange = -150.0;
          newValue =
              (((_animation.value - (0.0)) * newRange) / oldRange) + 150.0;
          containerWidth = newValue;

          oldRange = 1.0;
          newRange = -1.8;
          newValue = (((_animation.value - (0.0)) * newRange) / oldRange) + 1.8;
          alignText = newValue;

          oldRange = 1.0;
          newRange = -7.0;
          newValue = (((_animation.value - (0.0)) * newRange) / oldRange) + 7.0;
          welcomeText = newValue;
        }
        //print(_animation.value);
        //print(oldRange);
        //print(newRange);
        //print(newValue);
        print(welcomeText);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          child: (size.width > 1000)
              ? Column(
                  children: [
                    _Dektop(
                      animation: _animation,
                      containerWidth: containerWidth,
                      welcomeText: welcomeText,
                      controller: _controller,
                      width: width,
                      alignText: alignText,
                    )
                  ],
                )
              : Row(
                  children: [
                    _Mobil(
                        animation: _animation,
                        containerWidth: containerWidth,
                        welcomeText: welcomeText,
                        controller: _controller,
                        width: width,
                        alignText: alignText)
                  ],
                )),
    );
  }
}

class _Dektop extends StatelessWidget {
  const _Dektop({
    Key? key,
    required Animation<double> animation,
    required this.containerWidth,
    required this.welcomeText,
    required AnimationController controller,
    required this.width,
    required this.alignText,
  })  : _animation = animation,
        _controller = controller,
        super(key: key);

  final Animation<double> _animation;
  final double containerWidth;
  final double welcomeText;
  final AnimationController _controller;
  final double width;
  final double alignText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DetailsSide(animation: _animation),
        SwitcherSide(
            animation: _animation,
            containerWidth: containerWidth,
            welcomeText: welcomeText,
            controller: _controller,
            width: width,
            alignText: alignText),
      ],
    );
  }
}

class _Mobil extends StatelessWidget {
  const _Mobil({
    Key? key,
    required this.animation,
    required this.containerWidth,
    required this.welcomeText,
    required this.controller,
    required this.width,
    required this.alignText,
  }) : super(key: key);

  final Animation<double> animation;
  final double containerWidth;
  final double welcomeText;
  final AnimationController controller;
  final double width;
  final double alignText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DetailsSideMobile(animation: animation),
        SwitcherSideMobile(
            animation: animation,
            containerWidth: containerWidth,
            welcomeText: welcomeText,
            controller: controller,
            width: width,
            alignText: alignText),
      ],
    );
  }
}
