import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_manager/src/ui/results_fragment.dart';

class ManagerRoom extends StatefulWidget{
  @override
  _ManagerRoom createState() => _ManagerRoom();
}

class _ManagerRoom extends State<ManagerRoom> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Manager Room'),),
      body: new Container(
        alignment: Alignment.topRight,
        padding: const EdgeInsets.all(8.0),
        child: new Column(
          children: <Widget>[
            new Image.network(
              'https://i.picsum.photos/id/9/250/250.jpg',
              width: 250,
              height: 250,
            ),
            new Expanded(child: new Text('Item index')),
            new RaisedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Results()));
            }, child: Text('Go to Results'))
          ],
        )
      )
    );
    
  }
}