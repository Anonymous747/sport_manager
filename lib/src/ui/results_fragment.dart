import 'package:http/http.dart' as http;

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
    return Scaffold(
      appBar: AppBar(title: Text('Results'),),
      body: FutureBuilder(
        future: fetchAlbums(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData 
            ? TeamList(team: snapshot.data)
            : Center(child: CircularProgressIndicator(),
          );
        }
      ),  
    );
  }
}