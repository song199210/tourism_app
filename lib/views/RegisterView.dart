import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  TextEditingController _accountCon;
  TextEditingController _pwdCon;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
            child: Scrollbar(
              child: SingleChildScrollView(
                child:Container(
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Text("欢迎注册",style: TextStyle(fontSize: 26),),
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
                          padding: EdgeInsets.only(left: 6,right: 6),
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
                            padding: EdgeInsets.only(left: 6,right: 6),
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
                                  hintText: "请重复输入密码",
                                  focusColor:Colors.red,
                                ),
                              ),
                            )
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 6,right: 6, bottom: 10),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(
                                              color: Color(0xff7C98FC)
                                          ))
                                      ),
                                      child: TextField(
                                        controller: _accountCon,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Icon(Icons.insert_comment,color: Colors.black26,),
                                          hintStyle: TextStyle(fontSize: 14),
                                          hintText: "验证码",
                                          focusColor:Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: MaterialButton(
                                        elevation: 0,
                                        height: 40,
                                        color: Color(0xff7C98FC),
                                        onPressed: (){
                                          print("测试");
                                        },
                                        child: Center(child: Text("发送验证码",style: TextStyle(color: Colors.white,fontSize: 14),))
                                    ),
                                  )
                                ],
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20,bottom: 4),
                            child: MaterialButton(
                                child: Text("立即注册"),
                                padding: EdgeInsets.only(top: 12,bottom: 12),
                                textColor: Colors.white,
                                minWidth:double.infinity,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                color: Color(0xff7C98FC),
                                onPressed: (){
                                  Navigator.pushNamed(context, "/login");
                                }
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: MaterialButton(
                                child: Text("返回"),
                                padding: EdgeInsets.only(top: 12,bottom: 12),
                                textColor: Color(0xff7C98FC),
                                minWidth:double.infinity,

                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side:BorderSide(color: Color(0xff7C98FC),width: 1)
                                ),
                                color: Colors.white,
                                onPressed: (){
                                  Navigator.pushNamed(context, "/login");
                                }
                            )
                        )
                      ],
                    )
                ),
              ),
          ),
        ),
    );
  }
}