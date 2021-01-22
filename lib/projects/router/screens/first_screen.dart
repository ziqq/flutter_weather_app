import 'package:flutter/material.dart';
import 'package:test_flutter/projects/router/models/User.dart';
import 'package:test_flutter/projects/router/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
          centerTitle: true,
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              User user = User(name: 'Konstantin', age: 34);
              Navigator.pushNamed(context, 'second', arguments: user);
            },
            child: Text('Move to Second Screen'),
          ),
        ),
      ),
    );
  }
}
