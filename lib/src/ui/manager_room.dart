import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManagerRoom extends StatefulWidget{
  @override
  _ManagerRoom createState() => _ManagerRoom();
}

class _ManagerRoom extends State<ManagerRoom> {
  @override 
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        alignment: Alignment(0, 0),
        child: Text(
          "Manager",
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
        color: Colors.blue,
      ),
    );
  }
}