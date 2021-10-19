import 'package:flutter/material.dart';
import 'package:login_web_ui/constants.dart';

class LoginLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login', style: getTextTheme.headline2, maxLines: 1,),
          Icon(Icons.login_rounded,size: sizeFromHeight(6),color: kPrimaryColor,),
        ],
      ),
    );
  }
}
