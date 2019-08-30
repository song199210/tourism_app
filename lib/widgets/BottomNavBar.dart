import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {

  final int curentIndex;
  final Function onTap;
  final Map<String,IconData> items;

  const BottomNavBar({
    Key key,
    this.curentIndex,
    this.onTap,
    this.items
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomNavBarState();
  }
}

class BottomNavBarState extends State<BottomNavBar> {

  List<BottomNavigationBarItem> _setItems(){
    List<BottomNavigationBarItem> initItems=[];
    var _items=widget.items;
    _items.forEach((key,val){
      initItems.add(BottomNavigationBarItem(
          title:Text(key),
          icon: Icon(val)
      ));
    });
    return initItems;
  }
  @override
  Widget build(BuildContext context) {
    var _currentIndex=widget.curentIndex;
    // TODO: implement build
    return Material(
      color: Colors.white,
      child: BottomAppBar(
        color: Colors.white,
        elevation:3,
        child: BottomNavigationBar(
            currentIndex: _currentIndex,
            unselectedItemColor: Colors.black26,
            unselectedFontSize:10.0,
            selectedFontSize: 10.0,
            elevation: 0,
            onTap: (int index){
              widget.onTap(index);
            },
            type: BottomNavigationBarType.fixed,
            items: _setItems()
        )
      )
    );
  }

}