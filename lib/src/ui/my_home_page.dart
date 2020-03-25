import 'package:flutter/material.dart';
import 'package:sport_manager/src/bloc/navigation_bloc.dart';
import 'package:sport_manager/src/ui/manager_room.dart';
import 'package:sport_manager/src/ui/future_matches.dart';
import 'package:sport_manager/src/ui/team_list_fragment.dart';
import 'package:sport_manager/src/ui/results_fragment.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage();
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(bloc.navigationProvider.currentNavigation),),
      drawer: Drawer(
        child: Column(
          children: <Widget> [
            UserAccountsDrawerHeader(
              accountName: Text("Admin"),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
              accountEmail: Text("my_email@mail.ru"),
            ),
            ListTile(
              title: Text("Manager room"),
              onTap: () {
                Navigator.of(context).pop();
                bloc.updateNavigation("ManagerRoom");
              },
            ),
            ListTile(
              title: Text("Team List"),
              onTap: () {
                Navigator.of(context).pop();
                bloc.updateNavigation("TeamList");
              },
            ),
            ListTile(
              title: Text("Future Matches"),
              onTap: () {
                Navigator.of(context).pop();
                bloc.updateNavigation("FutureMatches");
              },
            ),
            ListTile(
              title: Text("Results"),
              onTap: () {
                Navigator.of(context).pop();
                bloc.updateNavigation("Results");
              },
            ),
          ]
        ),
      ),
      body: StreamBuilder(
        stream: bloc.getNavigation,
        initialData: bloc.navigationProvider.currentNavigation,
        builder: (context, snapshot) {
          if (bloc.navigationProvider.currentNavigation == "ManagerRoom") {
           Navigator.push(context, MaterialPageRoute(builder: (context) => ManagerRoom())); //return ManagerRoom();
          }
          if (bloc.navigationProvider.currentNavigation == "TeamList") {
           Navigator.push(context, MaterialPageRoute(builder: (context) => TeamList())); //return ManagerRoom();
            //return TeamList();
          }
          if (bloc.navigationProvider.currentNavigation == "FutureMatches") {
           Navigator.push(context, MaterialPageRoute(builder: (context) => FutureMatches())); //return ManagerRoom();
            //return FutureMatches();
          }
          if (bloc.navigationProvider.currentNavigation == "Results") {
           Navigator.push(context, MaterialPageRoute(builder: (context) => Results())); //return ManagerRoom();
            //return Results();
          } 
        },
      )
    );
  }
}
