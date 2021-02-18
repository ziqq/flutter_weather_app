import 'package:flutter/material.dart';

class FormExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JsonSerializeScreen(),
    );
  }
}

class JsonSerializeScreen extends StatefulWidget {
  const JsonSerializeScreen({Key key}) : super(key: key);

  @override
  _JsonSerializeScreenState createState() => _JsonSerializeScreenState();
}

class _JsonSerializeScreenState extends State<JsonSerializeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('JSON SERIALIZE'), centerTitle: true),
        body: Container(),
      ),
    );
  }
}
