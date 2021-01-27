import 'package:flutter/material.dart';
import 'package:test_flutter/constants.dart';
import 'package:test_flutter/projects/router/models/User.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textFieldController,
                style: TextStyle(fontSize: 24),
              ),
              RaisedButton(
                onPressed: () {
                  String textToSendBack = textFieldController.text;
                  Navigator.pop(context, textToSendBack);
                },
                child: Text('Go Back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class SecondScreen extends StatelessWidget {
//   final User user;

//   SecondScreen({this.user});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('${this.user.name} - ${this.user.age}'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(kDefaultPadding),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextField(),
//                 RaisedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: Text('Go Back'),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
