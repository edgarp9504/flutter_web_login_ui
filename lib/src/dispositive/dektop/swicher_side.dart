import 'package:flutter/material.dart';

class SwitcherSide extends StatefulWidget {
  const SwitcherSide({
    key,
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
  _SwitcherSideState createState() => _SwitcherSideState();
}

class _SwitcherSideState extends State<SwitcherSide> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment(widget._animation.value, 0.0),
      child: Container(
        height: size.height,
        width: size.width * 0.37,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/background-montails.jpg'),
            fit: BoxFit.cover,
            alignment: Alignment(widget._animation.value, 0.0),
          ),
        ),
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
          width: 400.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Align(
                    child: SizedBox(
                      width: 350.0,
                      height: 160.0,
                      child: Column(
                        children: [
                          Text(
                            widget._animation.value < 0.0
                                ? 'Hello,Friend!'
                                : 'Welcome Back!',
                            style: const TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            widget._animation.value < 0.0
                                ? 'Enter your personal details and start journey with us'
                                : 'To keep connected with us please login with your personal info',
                            style: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(color: Colors.white, width: 1)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ))),
                  onPressed: () {
                    setState(() {
                      if (widget._controller.isCompleted) {
                        widget._controller.reverse();
                      } else {
                        widget._controller.forward();
                      }
                    });
                  },
                  child: Center(
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(
                              widget._animation.value < 0.0
                                  ? 0.0
                                  : widget.alignText,
                              0.0),
                          child: Opacity(
                            opacity: (widget._animation.value < 0.0)
                                ? widget._animation.value.abs()
                                : 0.0,
                            child: const Text(
                              'SIGN IN',
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(widget.alignText, 0.0),
                          child: Opacity(
                            opacity: (widget._animation.value > 0.0)
                                ? widget._animation.value.abs()
                                : 0.0,
                            child: const Text(
                              'SIGN UP',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
