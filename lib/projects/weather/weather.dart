import 'package:flutter/material.dart';
import 'package:test_flutter/constants.dart';
import 'package:test_flutter/models/Weather.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Weather Forecast'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildSearchCityField(),
              _buildCityName(),
              _buildTemperatureDetail(),
              _buildExtraWeatherDetail(),
              WeatherOnDay(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSearchCityField() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    child: TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Enter city name',
        hintStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(Icons.search),
        prefixStyle: TextStyle(color: Colors.white),
        focusColor: Colors.white,
      ),
      style: TextStyle(color: Colors.white, fontSize: kDefaultFontSize),
    ),
  );
}

Widget _buildCityName() {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 2, vertical: kDefaultPadding),
    child: Column(
      children: [
        Text(
          'Murmansk Oblast, RU',
          style: TextStyle(
            fontSize: 32.0,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: kDefaultPadding),
          child: Text(
            'Friday, Mar 20, 2020',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildTemperatureDetail() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.wb_sunny,
          color: Colors.white,
          size: 70.0,
        ),
        SizedBox(width: kDefaultPadding),
        Column(
          children: [
            Text(
              '14 °F',
              style: TextStyle(
                color: Colors.white,
                fontSize: kDefaultFontSize * 3.5,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'LIGHT SNOW',
              style: TextStyle(
                color: Colors.white,
                fontSize: kDefaultFontSize,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildExtraWeatherDetail() {
  return Padding(
    padding: const EdgeInsets.all(kDefaultPadding),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              size: 32.0,
              color: Colors.white,
            ),
            SizedBox(height: 5.0),
            Text(
              '5',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'km/h',
              style: TextStyle(
                color: Colors.white,
                fontSize: kDefaultFontSize,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              size: 32.0,
              color: Colors.white,
            ),
            SizedBox(height: 5.0),
            Text(
              '3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              '%',
              style: TextStyle(
                color: Colors.white,
                fontSize: kDefaultFontSize,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              size: 32.0,
              color: Colors.white,
            ),
            SizedBox(height: 5.0),
            Text(
              '20',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              '%',
              style: TextStyle(
                color: Colors.white,
                fontSize: kDefaultFontSize,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class WeatherOnDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Text(
            '7-DAY WEATHER FORECAST',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        _buildWeatherForecast(),
      ],
    );
  }
}

Widget _buildWeatherForecast() {
  return Container(
    height: 130.0,
    padding: EdgeInsets.only(left: kDefaultPadding),
    child: ListView.builder(
      padding: EdgeInsets.all(kDefaultPadding / 2),
      scrollDirection: Axis.horizontal,
      itemCount: weatherDays.length,
      itemBuilder: (context, index) => ItemWeatherDay(day: weatherDays[index]),
    ),
  );
}

class ItemWeatherDay extends StatelessWidget {
  final WeatherDay day;
  final textStyle = TextStyle(
      color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w300);

  ItemWeatherDay({
    Key key,
    this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.0,
      height: 130.0,
      margin: EdgeInsets.only(right: kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.all(Radius.circular(kDefaultBorderRadius)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${day.title}',
            style: textStyle,
          ),
          SizedBox(height: kDefaultPadding / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${day.temperature} °F',
                style: textStyle,
              ),
              SizedBox(width: kDefaultPadding / 2),
              Icon(
                Icons.wb_sunny,
                color: Colors.white,
                size: 42.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
