import 'package:flutter/material.dart';
import 'package:test_flutter/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Weather',
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          iconTheme: IconThemeData(color: Colors.black54),
          brightness: Brightness.light,
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        body: _biuldBody(),
      ),
    );
  }
}

SingleChildScrollView _biuldBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _biuldHeaderImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildDescription(),
                Divider(),
                _buildTemperature(),
                Divider(),
                _buildTemperatureForecast(),
                Divider(),
                _buildFooterRatings(),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Image _biuldHeaderImage() {
  return Image(
    image: NetworkImage(
        'https://images.unsplash.com/photo-1489515217757-5fd1be406fef?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'),
    fit: BoxFit.cover,
  );
}

Column _buildDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Tuesday - May 22',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Divider(),
      Text(
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, adipisci beatae corporis culpa dolorum est ex facilis magnam obcaecati quas quasi qui repellendus tenetur totam.',
        style: TextStyle(color: Colors.black87),
      ),
    ],
  );
}

Row _buildTemperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.wb_sunny,
        color: Colors.yellow,
      ),
      SizedBox(
        width: kDefaultPadding,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '15° Clear',
            style: TextStyle(color: Colors.deepPurple),
          ),
          Text(
            'Murmaskaya oblast, Murmansk',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      )
    ],
  );
}

Wrap _buildTemperatureForecast() {
  return Wrap(
    spacing: kDefaultPadding / 3,
    children: List.generate(8, (int index) {
      return Chip(
        label: Text('${index + 20}°C', style: TextStyle(fontSize: 15.0)),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue.shade300),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          side: BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
      );
    }),
  );
}

Row _buildFooterRatings() {
  var stars = Row(children: [
    Icon(Icons.star, size: 15.0, color: Colors.yellow),
    Icon(Icons.star, size: 15.0, color: Colors.yellow)
  ]);

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Info with openweathermap.org',
        style: TextStyle(color: Colors.grey),
      ),
      stars
    ],
  );
}
