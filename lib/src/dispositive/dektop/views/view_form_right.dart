import 'package:flutter/material.dart';
import 'package:ui_login_web/src/widget/icons_social.dart';
import 'package:ui_login_web/src/widget/sing_account.dart';

class ViewFormRight extends StatelessWidget {
  const ViewFormRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          'Sign In to your Account',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: SizedBox(
            width: 170.0,
            child: IconSocial(),
          ),
        ),
        const Text('or use your email for registration: ',
            style: TextStyle(fontSize: 14, color: Colors.black54)),
        const SizedBox(
          height: 20.0,
        ),
        const CustomTextField(
          hintText: 'Name',
          icon: Icons.supervisor_account_outlined,
        ),
        const SizedBox(
          height: 15.0,
        ),
        const CustomTextField(
          hintText: 'E-mail',
          icon: Icons.email_outlined,
        ),
        const SizedBox(
          height: 15.0,
        ),
        const CustomTextField(hintText: 'Password', icon: Icons.lock_outline),
        const SizedBox(),
        Container(),
        const SizedBox(height: 40),

        //Button to sing
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
          onPressed: () {},
          child: Container(
            child: const Center(
              child: Text('SIGN UP',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        )
      ],
    );
  }
}
