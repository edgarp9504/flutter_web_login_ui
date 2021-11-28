import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconSocial extends StatelessWidget {
  const IconSocial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Buttom Facebook
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(30.0)),
          child: const Icon(
            FontAwesomeIcons.facebook,
            size: 18.0,
          ),
        ),
        //Buttom Google
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(30.0)),
          child: const Icon(
            FontAwesomeIcons.google,
            size: 18.0,
          ),
        ),
        //Buttom linkedin
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(30.0)),
          child: const Icon(
            FontAwesomeIcons.linkedin,
            size: 18.0,
          ),
        )
      ],
    );
  }
}
