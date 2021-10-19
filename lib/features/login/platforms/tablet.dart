import 'package:flutter/material.dart';
import 'package:login_web_ui/constants.dart';
import 'package:login_web_ui/features/login/units/carousel.dart';
import 'package:login_web_ui/features/login/units/login_button.dart';
import 'package:login_web_ui/features/login/units/login_fields.dart';
import 'package:login_web_ui/features/login/units/logo.dart';

class LoginViewTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: LoginCarousel()),
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
      ],
    );
  }
}
