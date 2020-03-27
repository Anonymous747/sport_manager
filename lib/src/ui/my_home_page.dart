import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'),),
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
                Navigator.pushNamed(context, '/m');
              },
            ),
            ListTile(
              title: Text("Team List"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/t');
              },
            ),
            ListTile(
              title: Text("Future Matches"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/f');
              },
            ),
            ListTile(
              title: Text("Results"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/r');
              },
            ),
          ]
        ),
      ),
      //body: ,
    );
  }
}
