import 'package:flutter/material.dart';

import './screens/login_screen.dart';
import './core/size_config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          SizeConfig().init(constraints, orientation);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Login Screen UI Challenge',
            theme: ThemeData(),
            home: LoginScreen(),
          );
        },
      );
    });
  }
}
