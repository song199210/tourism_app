import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
              children: <Widget>[
                Text("登录界面"),
                FlatButton(
                  child: Text("登录跳转"),
                  onPressed: (){
                    Navigator.pushNamed(context, "/home");
                  }
                )
              ],
            )
        ),
      )
    );
  }
}