import 'package:sport_manager/src/ui/future_matches.dart';
import 'package:sport_manager/src/ui/login_page.dart';
import 'package:sport_manager/src/ui/manager_room.dart';
import 'package:sport_manager/src/ui/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:sport_manager/src/ui/results_fragment.dart';
import 'package:sport_manager/src/ui/team_list_fragment.dart';

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sport Manager App',
      theme: ThemeData(
        primarySwatch: Colors.brown, 
      ),
      routes: {
        '/m': (context) => ManagerRoom(),
        '/f': (context) => FutureMatches(),
        '/t': (context) => TeamList(),
        '/r': (context) => Results(),
        '/h': (context) => MyHomePage(),
        '/': (context) => LoginPage(),
      },
      initialRoute: '/',
      //home: MyHomePage(),
      
    );
  }
}