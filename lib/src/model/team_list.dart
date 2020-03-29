import 'package:sport_manager/src/model/team.dart';
import 'package:flutter/material.dart';

class TeamList extends StatelessWidget {
  final List<Team> team;

  TeamList({Key key, this.team});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: ListView.builder(
          itemCount: team.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text("${team[index].title}"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return Scaffold(
                        body: ListView(children: <Widget>[
                          Text(team[index].title),
                        ], ), ); } ) ); }, ); } ) ) );
  }
}