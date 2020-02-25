import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/Model/device.dart';
//import 'package:flutter_module/Widget/ifeiyv_icon_text_button.dart';
import 'package:flutter_module/Widget/IconTextButton.dart';

class DeviceListRouter extends StatefulWidget {
  @override
  _DeviceListRouterState createState() => _DeviceListRouterState();
}

class _DeviceListRouterState extends State<DeviceListRouter> {
  List<Device> deviceItems = new List();
  Widget build(BuildContext context) {
    //获取路由参数
    var args=ModalRoute.of(context).settings.arguments;

//    List<String> ar = args as List;
//    if (ar != null) {
//      /*弹窗显示返回的数据*/
//      showDialog(
//          context: context,
//          barrierDismissible: false,
//          builder: (context) {
//            return AlertDialog(
//              title: Text("传入的参数"),
//              content: Text(
//                  "${ar[0]},${ar[1]},${ar[2]}"),
//              actions: <Widget>[
//                FlatButton(
//                    onPressed: () {
//                      Navigator.of(context).pop();
//                    },
//                    child: Text("确定"))
//              ],
//            );
//          });
//    }


    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(
          '我的',
          style: TextStyle(
            color: Color.fromARGB(255, 51, 51, 51),
            fontSize: 17.0,
            fontFamily: "PingFang-SC-Medium",
          ),
          textAlign: TextAlign.center,
        ),
//          backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: ImageIcon(AssetImage("images/back@3x.png")),
//          color: Color.fromARGB(255, 51, 51, 51),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: ImageIcon(AssetImage("images/add@3x.png")),
//              color: Color.fromARGB(255, 51, 51, 51),
            onPressed: () {
              gotoAddDevice();
//                Navigator.of(context).pushNamed("addDevice");
            },
          ),
        ],
      ),
      body: new ListView.separated(
        itemCount: deviceItems == null ? 0 : deviceItems.length,
        itemBuilder: _renderRow,
        separatorBuilder: (context, index) {
          return Divider(
            height: .5,
            indent: 15,
            endIndent: 15,
            color: Color.fromARGB(255, 237, 237, 237),
          );
        },
      ),
    );
  }

  Widget _renderRow(BuildContext context, int index) {
    Device device = deviceItems[index];
    if (device == null || device.device_id == null) {
      return null;
    }
    return Container(
      height: 73.0,
      padding: EdgeInsets.only(left: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 160,
            height: 73.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  device.device_id,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Color.fromARGB(255, 51, 51, 51), fontSize: 15.0),
                ),
                Text(
                  device.device_user_name,
                  style: TextStyle(
                      color: Color.fromARGB(255, 52, 224, 61), fontSize: 12.0),
                ),
              ],
            ),
          ),
//          Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 60.0,
                height: 50,
                child: IconTextButton.icon(
                  icon: Image.asset(
                    "images/realplay@3x.png",
                    width: 16,
                    height: 18,
                  ),
                  label: Text("预览",
                      style: TextStyle(
                          color: Color.fromARGB(255, 51, 51, 51),
                          fontSize: 12.0)),
                  color: Colors.white,
                  elevation: 0.0,
                  iconTextAlignment: IconTextAlignment.iconTopTextBottom,
                  onPressed: () {
//                    onClick("图上文下");
                  },
                ),
              ),
              SizedBox(
                width: 60.0,
                height: 50,
                child: IconTextButton.icon(
                  icon: Image.asset(
                    "images/playback@3x.png",
                    width: 18,
                    height: 18,
                  ),
                  label: Text("回放",
                      style: TextStyle(
                          color: Color.fromARGB(255, 51, 51, 51),
                          fontSize: 12.0,)),
                  color: Colors.white,
                  elevation: 0.0,
                  iconTextAlignment: IconTextAlignment.iconTopTextBottom,
                  onPressed: () {
//                    onClick("图上文下");
                  },
                ),
              ),
              SizedBox(
                width: 60.0,
                height: 50,
                child: IconTextButton.icon(
                  icon: Image.asset(
                    "images/setting@3x.png",
                    width: 14,
                    height: 18,
                  ),
                  label: Text("设置",
                      style: TextStyle(
                          color: Color.fromARGB(255, 51, 51, 51),
                          fontSize: 12.0)),
                  color: Colors.white,
                  elevation: 0.0,
                  iconTextAlignment: IconTextAlignment.iconTopTextBottom,
                  onPressed: () {
//                    onClick("图上文下");
                  },
                ),
              ),
            ],
          ),
//            ],
//          ),
        ],
      ),
    );

    return Container(
      height: 73.0,
      padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 20.0),
      child: Text(
        device.device_id,
      ),
//      // 下边框
//      decoration: BoxDecoration(
//          border:
//              Border(bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
    );
  }

  /*等待返回数据是异步操作*/
  void gotoAddDevice() async {
    //result为下个页面返回的数据
    final result = await Navigator.of(context).pushNamed("addDevice");

    Device device = result as Device;
    if (device == null) {
      return;
    }
    /*弹窗显示返回的数据*/
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("返回的结果"),
            content: Text(
                "${device.device_id},${device.device_user_name},${device.device_pwd}"),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    if (device != null) {
                      setState(() {
                        deviceItems.add(device);
                      });
                    }
                    Navigator.of(context).pop();
                  },
                  child: Text("确定"))
            ],
          );
        });
  }
}
