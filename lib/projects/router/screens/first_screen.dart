import 'package:flutter/material.dart';
import 'package:test_flutter/projects/router/models/User.dart';
import 'package:test_flutter/projects/router/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String text = 'Some text';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 24),
              ),
              RaisedButton(
                onPressed: () => _returnDataFromSecondScreen(context),
                child: Text('Move to Second Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _returnDataFromSecondScreen(BuildContext context) async {
    final result = await Navigator.pushNamed(context, 'second');

    setState(() {
      text = result;
    });
  }
}

// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('First Screen'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Same text',
//                 style: TextStyle(fontSize: 24),
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   User user = User(name: 'Konstantin', age: 34);
//                   Navigator.pushNamed(context, 'second', arguments: user);

//                   setState();
//                 },
//                 child: Text('Move to Second Screen'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
