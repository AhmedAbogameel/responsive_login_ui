import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_web_ui/core/router/router.dart';
import '../constants.dart';

showSnackBar(String message,{bool upperSnack = false ,bool errorMessage = false,bool popPage = false,duration = 5,Color color = kPrimaryColor}) {
  ScaffoldMessenger.of(MagicRouter.currentContext).hideCurrentSnackBar();
  ScaffoldMessenger.of(MagicRouter.currentContext).showSnackBar(
    SnackBar(
      backgroundColor: errorMessage ? Colors.red :  upperSnack ? kAccentColor : color,
      behavior: upperSnack ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
      // shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(5)
      // ),
      margin: upperSnack ? EdgeInsets.only(bottom: sizeFromHeight(1.1)) : null,
      elevation: 0.0,
      content: Text(message,style: TextStyle(color: Colors.white),),
      action: SnackBarAction(
        label: '',
        onPressed: () {},
      ),
      duration: Duration(seconds: duration),
    ),
  );
  if(popPage)
    Timer(Duration(seconds: 5),()=> MagicRouter.pop());
}