import 'package:flutter/material.dart';
import '../domain/user.dart';
import '../providers/user_provider.dart';
import 'package:provider/provider.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD PAGE"),
        elevation: 0.1,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
              child: Text((user.email != null
                  ? user.email as String
                  : "not logged in"))),
          SizedBox(height: 100),
          RaisedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/logout');
            },
            child: Text("Logout"),
            color: Colors.lightBlueAccent,
          )
        ],
      ),
    );
  }
}
