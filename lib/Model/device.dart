import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Device {
  Device();

  String device_id;
  String device_user_name;
  String device_pwd;
}
