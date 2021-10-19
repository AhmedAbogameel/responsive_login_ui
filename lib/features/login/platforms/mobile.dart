import 'package:flutter/material.dart';
import 'package:login_web_ui/constants.dart';
import 'package:login_web_ui/features/login/units/carousel.dart';
import 'package:login_web_ui/features/login/units/login_button.dart';
import 'package:login_web_ui/features/login/units/login_fields.dart';
import 'package:login_web_ui/features/login/units/logo.dart';

class LoginViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sizeFromWidth(10), vertical: sizeFromHeight(5)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LoginLogo(),
            LoginFields(),
            LoginButton(),
          ],
        ),
      ),
    );
  }
}
