import 'package:flutter/material.dart';
import 'package:test_flutter/projects/router/models/User.dart';
import 'package:test_flutter/projects/router/screens/first_screen.dart';
import 'package:test_flutter/projects/router/screens/second_screen.dart';

class RouterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => FirstScreen());
            break;
          case '/second':
            User user = settings.arguments;
            return MaterialPageRoute(
                builder: (context) => SecondScreen(user: user));
            break;
        }
      },
    );
  }
}
