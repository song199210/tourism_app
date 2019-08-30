import 'package:flutter/material.dart';
import 'package:tourism_app/widgets/BottomNavBar.dart';

import 'DynamicView.dart';
import 'LocationView.dart';
import 'MeView.dart';
import 'ReleaseView.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeViewState();
  }
}

class HomeViewState extends State<HomeView> {
  final Map<String,IconData> itemMap={
    "动态":Icons.announcement,
    "位置":Icons.edit_location,
    "发布":Icons.add_box,
    "我的":Icons.person
  };
  int _currentIndex=0;
  List<String> titles=[
    "动态",
    "位置",
    "发布",
    "我的"
  ];
  List<Widget> pages=[
    DynamicView(),
    ReleaseView(),
    LocationView(),
    MeView()
  ];
  void setCurIndex(int index){
    this.setState((){
      this._currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[_currentIndex],style: TextStyle(fontSize: 15.0),),
        centerTitle:true,
        automaticallyImplyLeading:false,
        elevation:0,
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavBar(
        curentIndex: _currentIndex,
        onTap: (int index){
          setCurIndex(index);
        },
        items: itemMap,
      ),
    );
  }
}