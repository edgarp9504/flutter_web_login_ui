// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_login_web/src/dispositive/dektop/views/view_form_left.dart';
import 'package:ui_login_web/src/dispositive/dektop/views/view_form_right.dart';

class DetailsSide extends StatelessWidget {
  const DetailsSide({Key? key, required this.animation}) : super(key: key);

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment(-animation.value, 0.0),
      child: Padding(
        // Paddin es para centrarlo en medio
        padding: EdgeInsets.only(top: size.height * 0.25),
        child: SizedBox(
          width: size.width * 0.63,
          child: Column(
            children: [
              //ViewForm
              animation.value < 0.0
                  ? const ViewFormRight()
                  : const ViewFormLeft(),
            ],
          ),
        ),
      ),
    );
  }
}
