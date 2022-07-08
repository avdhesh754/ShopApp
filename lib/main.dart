import 'package:flutter/material.dart';

import 'Views/SplashScreen.dart';
import 'Views/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    bool isDark = false;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: isDark ? Colors.amber : Colors.red,
      ),
      home: SplashScreen()
    );
  }
}
