import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintText, required this.icon})
      : super(key: key);
  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.0,
      width: 350.0,
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffF4F8F7),
            hintText: hintText,
            border: const OutlineInputBorder(),
            enabledBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
            prefix: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Icon(
                icon,
                size: 20.0,
              ),
            )),
      ),
    );
  }
}
