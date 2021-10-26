import 'package:covid_info/screens/home.dart';
import 'package:covid_info/utilities/constants.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CovidInfoApp());

class CovidInfoApp extends StatelessWidget {
  const CovidInfoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid 19',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFEFE),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
