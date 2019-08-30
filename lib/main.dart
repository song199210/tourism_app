import 'package:flutter/material.dart';
import 'package:tourism_app/views/HomeView.dart';
import 'package:tourism_app/views/LoginView.dart';
import 'package:tourism_app/widgets/BottomNavBar.dart';

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
        "/home": (context)=>HomeView()
      }
    );
  }
}
