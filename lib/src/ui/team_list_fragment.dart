import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:sport_manager/src/bloc/recive_data.dart';
import 'package:sport_manager/src/model/team_photo_list.dart';
import 'package:sport_manager/src/model/team_photos.dart';

class TeamList extends StatefulWidget{
  @override
  _TeamList createState() => _TeamList();
}

class _TeamList extends State<TeamList> {
  @override 
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF696077), Color(0xFF292C36)],
          begin: Alignment.topCenter,
          tileMode: TileMode.clamp,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: screenAwareSize(20.0, context),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "Team List",
            style: TextStyle(
              color: Colors.white,
              fontSize:  screenAwareSize(10.0, context),)),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(mainAxisSize: MainAxisSize.max,
            children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    child: Row(
                      children: <Widget>[
                        Expanded(child:
                          Text(
                            'Team List',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 15, ),),),
                        Icon(Icons.arrow_drop_down), ], ), 
                    color: Colors.white,
                    height: 30,
                  ),
                ),
              ]
            ),),
            new FutureBuilder<List<TeamPhoto>>(
              future: fetchTeamPhotoes(http.Client()),
              builder: (context, snapshot) {
                if (snapshot.hasError) print(snapshot.error);

                return snapshot.hasData
                  ? TeamPhotoesList(teamPhotoes: snapshot.data,)
                  : Center(child: CircularProgressIndicator());
              }
            )
          ],)
        ), 
      ),
    );
  }
}

double baseHeight = 640.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}