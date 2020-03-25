import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_manager/src/bloc/navigation_bloc.dart';

class ManagerRoom extends StatefulWidget{
  @override
  _ManagerRoom createState() => _ManagerRoom();
}

class _ManagerRoom extends State<ManagerRoom> {
  @override 
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        children: <Widget>[
          new Image.network(
            'https://i.picsum.photos/id/9/250/250.jpg',
            width: 250,
            height: 250,
          ),
          new Text('Manager Room'),
          new Column(
            children: <Widget>[
              new RaisedButton(
                padding: EdgeInsets.all(10),
                onPressed: () {
                  bloc.updateNavigation("Results");
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => Results('res1')));
                }, 
                child: Text('Go to Results')),
              new RaisedButton(
                padding: EdgeInsets.all(10),
                onPressed: () {
                bloc.updateNavigation('FutureMatches');
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => FutureMatches()));
                }, 
                child: Text('Future Matches')),
              new RaisedButton(
                padding: EdgeInsets.all(10),
                onPressed: () {
                bloc.updateNavigation("TeamList");
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => TeamList()));
                }, 
                child: Text('Team List')),
            ]  
          ),
        ],
      )
    );
  }
}