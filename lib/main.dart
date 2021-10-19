import 'package:flutter/material.dart';
import 'constants.dart';
import 'core/router/router.dart';
import 'features/login/view.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      theme: theme,
      home: LoginView(),
    );
  }
}