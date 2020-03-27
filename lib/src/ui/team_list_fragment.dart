import 'package:flutter/material.dart';

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
              fontSize:  screenAwareSize(10.0, context),
              fontFamily: "Montserrat-Bold",)),
        ),
      ),
    );
  }
}

double baseHeight = 640.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}