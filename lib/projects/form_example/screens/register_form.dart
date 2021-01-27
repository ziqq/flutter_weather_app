import 'package:flutter/material.dart';
import 'package:test_flutter/constants.dart';

class RegisterFormScreen extends StatefulWidget {
  @override
  _RegisterFormScreenState createState() => _RegisterFormScreenState();
}

class _RegisterFormScreenState extends State<RegisterFormScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Зарегистрируйте аккаунт',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: kDefaultTitleFontSize,
            ),
          ),
          elevation: 0,
          toolbarHeight: 100.0,
          backgroundColor: Colors.white,
        ),
        body: Form(
          child: ListView(
            padding: EdgeInsets.all(kDefaultPadding),
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Ваш телефон',
                ),
              ),
              SizedBox(height: kDefaultPadding),
              TextFormField(
                decoration: InputDecoration(labelText: 'Придумайте пароль'),
              ),
              SizedBox(height: kDefaultGutter),
              RaisedButton(
                onPressed: () {},
                color: Colors.black87,
                textColor: Colors.white,
                child: Text('Зарегистрироваться'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
