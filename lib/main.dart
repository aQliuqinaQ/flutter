import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myfirstflutter/devicelist.dart';
import 'package:myfirstflutter/adddevice.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Welcome to Flutter',
        theme: new ThemeData(
          primaryColor: Colors.white,
        ),
        home: LoginPage(),
        routes: <String, WidgetBuilder>{
          "deviceList": (context) => DeviceListRouter(),
          "addDevice": (context) => AddDeviceRouter(),
//        "language": (context) => LanguageRoute(),
        });
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _serverCtrl = new TextEditingController();
  TextEditingController _keyCtrl = new TextEditingController();
  TextEditingController _tokenCtrl = new TextEditingController();
  Widget build(BuildContext context) {
    return new Scaffold(
//        appBar: new AppBar(
//          title: new Text('登录页'),
//        ),
      body: new ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 100.0,
              child: Image(
                image: AssetImage("images/logo.png"),
                width: 200.0,
                height: 48.0,
              ),
            ),
            Positioned(
              top: 243.0,
              left: 21.0,
              child: Text(
                '服务器类型',
                style: TextStyle(
                  color: Color.fromARGB(255, 102, 102, 102),
                  fontSize: 15.0,
                  fontFamily: "PingFang-SC-Medium",
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Positioned(
              top: 282.0,
              height: 30.0,
              left: 21.0,
              right: 21.0,
              child: TextField(
                controller: _serverCtrl,
                autofocus: true,
                decoration: InputDecoration(
//                  labelText: "用户名",
                  hintText: "请输入服务器类型",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 153, 153, 153),
                    fontSize: 13.0,
                    fontFamily: "PingFang-SC-Medium",
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 237, 237, 237),
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 46, 220, 5),
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
//                  prefixIcon: Icon(Icons.person)
                ),
                style: TextStyle(
                  color: Color.fromARGB(255, 51, 51, 51),
                  fontSize: 15.0,
                  fontFamily: "PingFang-SC-Medium",
                ),
                cursorColor: Color.fromARGB(255, 46, 220, 5),
              ),
            ),
            Positioned(
              top: 331.0,
              left: 21.0,
              child: Text(
                'AppKey',
                style: TextStyle(
                  color: Color.fromARGB(255, 102, 102, 102),
                  fontSize: 15.0,
                  fontFamily: "PingFang-SC-Medium",
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Positioned(
              top: 367.0,
              height: 30.0,
              left: 21.0,
              right: 21.0,
              child: TextField(
                controller: _keyCtrl,
                autofocus: true,
                decoration: InputDecoration(
//                  labelText: "用户名",
                  hintText: "请输入AppKey",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 153, 153, 153),
                    fontSize: 13.0,
                    fontFamily: "PingFang-SC-Medium",
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 237, 237, 237),
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 46, 220, 5),
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
//                  prefixIcon: Icon(Icons.person)
                ),
                style: TextStyle(
                  color: Color.fromARGB(255, 51, 51, 51),
                  fontSize: 15.0,
                  fontFamily: "PingFang-SC-Medium",
                ),
                cursorColor: Color.fromARGB(255, 46, 220, 5),
              ),
            ),

            Positioned(
              top: 422.0,
              left: 21.0,
              child: Text(
                'AccessToken',
                style: TextStyle(
                  color: Color.fromARGB(255, 102, 102, 102),
                  fontSize: 15.0,
                  fontFamily: "PingFang-SC-Medium",
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Positioned(
              top: 458.0,
              height: 30.0,
              left: 21.0,
              right: 21.0,
              child: TextField(
                controller: _tokenCtrl,
                autofocus: true,
                decoration: InputDecoration(
//                  labelText: "用户名",
                  hintText: "请输入Token",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 153, 153, 153),
                    fontSize: 13.0,
                    fontFamily: "PingFang-SC-Medium",
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 237, 237, 237),
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 46, 220, 5),
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
//                  prefixIcon: Icon(Icons.person)
                ),
                style: TextStyle(
                  color: Color.fromARGB(255, 51, 51, 51),
                  fontSize: 15.0,
                  fontFamily: "PingFang-SC-Medium",
                ),
                cursorColor: Color.fromARGB(255, 46, 220, 5),
              ),
            ),

//            TextField(
//              decoration: InputDecoration(
//                  labelText: "密码",
//                  hintText: "您的登录密码",
//                  prefixIcon: Icon(Icons.lock)),
//              obscureText: true,
//            ),
            Positioned(
              top: 548.0,
              child: FlatButton(
                color: Color.fromARGB(255, 46, 220, 5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                textColor: Colors.white,
                child: Container(
                  height: 37.0,
                  width: 309.0,
                  alignment: Alignment.center,
                  child: new Text('开始使用'),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("deviceList",arguments: [_serverCtrl.text,_keyCtrl.text,_tokenCtrl.text]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
