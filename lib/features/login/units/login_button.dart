import 'package:flutter/material.dart';
import 'package:login_web_ui/widgets/confirm_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConfirmButton(
      title: 'Login',
      verticalMargin: 20,
      onPressed: (){},
    );
  }
}
