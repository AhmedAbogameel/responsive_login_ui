import 'package:flutter/material.dart';
import 'package:login_web_ui/constants.dart';

class LoginLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Center(
        child: Row(
          children: [
            Expanded(flex: 3,child: Text('Login', style: getTextTheme.headline1, maxLines: 1,)),
            Expanded(child: Icon(Icons.login_rounded,size: sizeFromHeight(6),color: kPrimaryColor,)),
          ],
        ),
      ),
    );
  }
}
