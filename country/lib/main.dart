import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[50],
        appBar: AppBar(
          title: Text('country'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: CountryPage(),
      ),
    ),
  );
}

class CountryPage extends StatefulWidget {
  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  int leftCountryNumber = 1;
  int rightCountryNumber = 1;

  void changeCountry() {
    setState(() {
      leftCountryNumber = Random().nextInt(6) + 1;
      rightCountryNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeCountry();
              },
              child: Image.asset('images/country$leftCountryNumber.gif'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeCountry();
              },
              child: Image.asset('images/country$rightCountryNumber.gif'),
            ),
          ),
        ],
      ),
    );
  }
}
