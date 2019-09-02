import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  DateTime _lastPressedAt;
  TextEditingController _accountCon;
  TextEditingController _pwdCon;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
        onWillPop: () async {
          if (_lastPressedAt == null ||
              DateTime.now().difference(_lastPressedAt) > Duration(seconds: 2)) {
            //两次点击间隔超过1秒则重新计时
            _lastPressedAt = DateTime.now();
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          body: Center(
              child: Scrollbar(
                child: SingleChildScrollView(
                  child:Container(
                      height: 330,
                      padding: EdgeInsets.all(16.0),
                      margin: EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Text("欢迎登陆",style: TextStyle(fontSize: 26),),
                          Padding(
                            padding: EdgeInsets.only(top: 16,bottom: 6, left: 6,right: 6),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(
                                      color: Color(0xff7C98FC)
                                  ))
                              ),
                              child: TextField(
                                controller: _accountCon,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.phone_iphone,color: Colors.black26),
                                    prefixStyle: TextStyle(color: Color(0xff7C98FC)),
                                    hintStyle: TextStyle(fontSize: 14),
                                    hintText: "请输入手机号码"
                                ),
                              ),
                            )
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 6,bottom: 6, left: 6,right: 6),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(
                                  color: Color(0xff7C98FC)
                                ))
                              ),
                              child: TextField(
                                controller: _accountCon,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.lock,color: Colors.black26,),
                                    hintStyle: TextStyle(fontSize: 14),
                                    hintText: "请输入密码",
                                    focusColor:Colors.red,
                                ),
                              ),
                            )
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 20,bottom: 4),
                              child: MaterialButton(
                                  child: Text("登录"),
                                  padding: EdgeInsets.only(top: 12,bottom: 12),
                                  textColor: Colors.white,
                                  minWidth:double.infinity,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  color: Color(0xff7C98FC),
                                  onPressed: (){
                                    Navigator.pushNamed(context, "/home");
                                  }
                              )
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: MaterialButton(
                                  child: Text("注册"),
                                  padding: EdgeInsets.only(top: 12,bottom: 12),
                                  textColor: Color(0xff7C98FC),
                                  minWidth:double.infinity,

                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side:BorderSide(color: Color(0xff7C98FC),width: 1)
                                  ),
                                  color: Colors.white,
                                  onPressed: (){
                                    Navigator.pushNamed(context, "/register");
                                  }
                              )
                          )
                        ],
                      )
                  ),
                ),
            ),
          ),
      )
    );
  }
}