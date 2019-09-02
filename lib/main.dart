import 'package:flutter/material.dart';
import 'package:tourism_app/views/HomeView.dart';
import 'package:tourism_app/views/LoginView.dart';
import 'package:tourism_app/views/RegisterView.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: <String,WidgetBuilder>{
        "/": (context)=>LoginView(),
        "/login": (context)=>LoginView(),
        "/register": (context)=>RegisterView(),
        "/home": (context)=>HomeView()
      }
    );
  }
}
