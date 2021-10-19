import 'package:flutter/material.dart';
import 'package:login_web_ui/constants.dart';
import 'package:login_web_ui/features/login/units/carousel.dart';
import 'package:login_web_ui/features/login/units/login_button.dart';
import 'package:login_web_ui/features/login/units/login_fields.dart';
import 'package:login_web_ui/features/login/units/logo.dart';

class LoginViewWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeFromHeight(0 ,removeAppBarSize: false),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: sizeFromWidth(10)),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    LoginLogo(),
                    LoginFields(),
                    LoginButton(),
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: Material(color: Colors.red,child: LoginCarousel())),
        ],
      ),
    );
  }
}
