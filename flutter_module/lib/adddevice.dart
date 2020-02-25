import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_module/Model/device.dart';
class AddDeviceRouter extends StatefulWidget{
  @override
  _AddDeviceRouterState createState() => _AddDeviceRouterState();
}

class _AddDeviceRouterState extends State<AddDeviceRouter>{
  TextEditingController _deviceIdCtrl = new TextEditingController();
  TextEditingController _userNameCtrl = new TextEditingController();
  TextEditingController _pwdNameCtrl = new TextEditingController();
  Device _device = new Device();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text('添加设备',
          style: TextStyle(
            color: Color.fromARGB(255, 51, 51, 51),
            fontSize: 17.0,
            fontFamily: "PingFang-SC-Medium",
          ),
          textAlign: TextAlign.center,
        ),
//        backgroundColor: Colors.white,
        centerTitle: true,
        elevation : 0,
        leading: IconButton(
          icon: ImageIcon(AssetImage("images/back@3x.png")),
//          color: Color.fromARGB(255, 51, 51, 51),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: new ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 30.0,
              height: 30.0,
              left: 21.0,
              right: 21.0,
              child: TextField(
                autofocus: true,
                controller: _deviceIdCtrl,
                decoration: InputDecoration(
//                  labelText: "用户名",
                  hintText: "请输入设备序列号",
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
                  prefixIcon:ImageIcon(AssetImage("images/deviceid@3x.png"),color: Color.fromARGB(255, 51, 51, 51),),
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
              top: 90.0,
              height: 30.0,
              left: 21.0,
              right: 21.0,
              child: TextField(
                autofocus: true,
                controller: _userNameCtrl,
                decoration: InputDecoration(
//                  labelText: "用户名",
                  hintText: "请输入用户名",
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
                  prefixIcon:ImageIcon(AssetImage("images/username@3x.png"),color: Color.fromARGB(255, 51, 51, 51),),
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
              top: 150.0,
              height: 30.0,
              left: 21.0,
              right: 21.0,
              child: TextField(
                autofocus: true,
                controller: _pwdNameCtrl,
                decoration: InputDecoration(
//                  labelText: "用户名",
                  hintText: "请输入密码",
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
                  prefixIcon:ImageIcon(AssetImage("images/pwd@3x.png"),color: Color.fromARGB(255, 51, 51, 51),),
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
              bottom: 48.0,
              child: FlatButton(
                color: Color.fromARGB(255, 46, 220, 5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                textColor: Colors.white,
                child: Container(
                  height: 37.0,
                  width: 309.0,
                  alignment: Alignment.center,
                  child: new Text('确定'),
                ),
                onPressed: () {
                  _addDevice();
//                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _addDevice(){
    _device.device_id = _deviceIdCtrl.text;
    _device.device_user_name = _userNameCtrl.text;
    _device.device_pwd = _pwdNameCtrl.text;
    Navigator.of(context).pop(_device);
  }
}