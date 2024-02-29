// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class MySwitchWidget extends StatefulWidget {
//   bool sValue;
//
//   MySwitchWidget({super.key,required this.sValue});
//   @override
//   _MySwitchWidgetState createState() => _MySwitchWidgetState();
// }
//
// class _MySwitchWidgetState extends State<MySwitchWidget> {
//   @override
//   void initState() {
//     super.initState();
//     loadSwitchState();
//   }
//
//   void loadSwitchState() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     bool switchValue = sharedPreferences.getBool('switchValue') ?? false;
//     setState(() {
//       widget.sValue = switchValue;
//     });
//   }
//
//   void saveSwitchState(bool value) async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     sharedPreferences.setBool('switchValue', value);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Switch(
//       value:  widget.sValue,
//       onChanged: (value) {
//         setState(() {
//           widget.sValue = value;
//           saveSwitchState(value);
//         });
//       },
//     );
//   }
// }
//
import 'package:shared_preferences/shared_preferences.dart';
class CacheManagerImpl extends Cache {
  @override
  Future<bool> getTheme() async {
    final shared = await SharedPreferences.getInstance();
    return shared.getBool("active") ?? false;
  }
  @override
  Future<void> saveTheme(bool active) async {
    final shared = await SharedPreferences.getInstance();
    shared.setBool("active", active);
  }
}
abstract class Cache {
  Future<void> saveTheme(bool active);
  Future<bool> getTheme();
}
