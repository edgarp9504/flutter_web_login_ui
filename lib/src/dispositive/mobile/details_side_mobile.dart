// ignore: file_names
import 'package:flutter/material.dart';
import 'package:ui_login_web/src/dispositive/mobile/views/mobile_view_form_left.dart';
import 'package:ui_login_web/src/dispositive/mobile/views/mobile_view_form_right.dart';

class DetailsSideMobile extends StatelessWidget {
  const DetailsSideMobile({Key? key, required this.animation})
      : super(key: key);

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment(0.0, -animation.value),
      child: SizedBox(
        width: size.width,
        height: size.height * 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            animation.value < 0.0
                ? const ViewFormRightMobile()
                : const ViewFormLeftMobile(),
          ],
        ),
      ),
    );
  }
}
