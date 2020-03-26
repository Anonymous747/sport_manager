import 'package:flutter/material.dart';
import 'package:sport_manager/src/bloc/recive_data.dart';
import 'package:sport_manager/src/model/team_list.dart';

class Results extends StatefulWidget{
  final String _title;
  
  Results(this._title);
  @override
  _Results createState() => _Results(_title);
}

class _Results extends State<Results> {
  final String _title;
  
  _Results(this._title);

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
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