import 'package:flutter/material.dart';
import 'package:test_flutter/projects/router/screens/first_screen.dart';

class RouterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Routing and Navigator'),
          centerTitle: true,
        ),
        body: FirstScreen(),
      ),
    );
  }
}
