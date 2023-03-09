
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {
   Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London'));
   Map data = jsonDecode(response.body);
   
  //  String datetime = data['datetime'];
  //  String offset = data['utc_offset'].substring(1,3);
  //  DateTime now = DateTime.parse(datetime);
  //  now.add(Duration(hours: int.parse(offset)));

   if (kDebugMode) {
     //print(datetime);
     //print(offset);
     print(data);
   }
}

  @override
  void initState() {
    super.initState();
  getTime();
  debugPrint('Hey there');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Loading Screen'),
    );
  }
}