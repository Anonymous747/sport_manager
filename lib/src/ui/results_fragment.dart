import 'package:flutter/material.dart';
import 'package:sport_manager/src/bloc/recive_data.dart';
import 'package:sport_manager/src/model/team_list.dart';

class Results extends StatefulWidget{
  @override
  _Results createState() => _Results();
}

class _Results extends State<Results> {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: FutureBuilder(
          future: fetchAlbums(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData 
            ? TeamList(team: snapshot.data)
            : Center(child: CircularProgressIndicator(),
            );
          }
        ),  
      )
    );
  }
}