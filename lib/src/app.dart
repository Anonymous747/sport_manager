import 'package:sport_manager/src/ui/my_home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sport Manager App',
      theme: ThemeData(
        primarySwatch: Colors.brown, 
      ),
      home: MyHomePage(),
    );
  }
}