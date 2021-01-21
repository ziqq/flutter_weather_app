import 'package:flutter/material.dart';
import 'package:test_flutter/projects/router/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => SecondScreen());
          Navigator.push(context, route);
        },
        child: Text('Move to Second Screen'),
      ),
    );
  }
}
