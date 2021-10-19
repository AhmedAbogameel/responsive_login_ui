import 'package:flutter/material.dart';
import 'package:login_web_ui/features/login/platforms/tablet.dart';
import 'package:login_web_ui/widgets/responsive.dart';
import 'platforms/mobile.dart';
import 'platforms/web.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        web: LoginViewWeb(),
        mobile: LoginViewMobile(),
        tablet: LoginViewTablet(),
      ),
    );
  }
}
