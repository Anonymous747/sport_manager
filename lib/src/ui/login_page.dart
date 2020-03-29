import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sport_manager/src/bloc/bloc.dart';

class LoginPage  extends StatelessWidget {

  changeThePage(BuildContext context) {
    Navigator.of(context).pushNamed('/h');
  }
  
  @override
  Widget build(BuildContext context) {
    final bloc = Bloc();
    
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
              StreamBuilder<String>(
                stream: bloc.email,
                builder: (context, snapshot) => TextField(
                  onChanged: (s) => bloc.emailChanged.add(s),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter email",
                    labelText: "Email",
                    errorText: snapshot.error,
                  ),
                )
              ),
              SizedBox(
                height: 20.0,
              ),
              StreamBuilder<String>(
                stream: bloc.password,
                builder: (context, snapshot) => TextField(
                  onChanged: (s) => bloc.passwordChanged.add(s),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter password",
                    labelText: "Password",
                    errorText: snapshot.error,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              StreamBuilder<bool>(
                stream: bloc.submitCheck,
                builder: (context, snapshot) => RaisedButton(
                    color: Colors.tealAccent,
                    onPressed: snapshot.hasData 
                    ? () => changeThePage(context) : null,
                    child: Text("Submit"),
                  ),
              ),
            ],
          ),
        ),
      )
    );
  }
}