import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter email",
                  labelText: "Email",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                color: Colors.tealAccent,
                onPressed: null,
                child: Text("Submit"),
              )
            ],
          ),
        ),
      )
    );
  }
}