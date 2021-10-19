import 'package:flutter/cupertino.dart';
import 'package:login_web_ui/widgets/text_form_field.dart';

class LoginFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputFormField(
          hint: 'Email',
        ),
        InputFormField(
          hint: 'Password',
          secure: true,
        ),
      ],
    );
  }
}
