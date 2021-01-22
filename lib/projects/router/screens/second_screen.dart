import 'package:flutter/material.dart';
import 'package:test_flutter/projects/router/models/User.dart';

class SecondScreen extends StatelessWidget {
  final User user;

  SecondScreen({this.user});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('${this.user.name} - ${this.user.age}'),
          centerTitle: true,
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go Back'),
          ),
        ),
      ),
    );
  }
}
