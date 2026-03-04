import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

void getData() async {
  var url = Uri.https('time.now', 'developer/api/timezone/Europe/London');
  
  Response resp = await get(url);
  // print(resp.body);

  Map data = jsonDecode(resp.body);
  print(data);

  String datetime = data['datetime'];
  DateTime now = DateTime.parse(datetime);
  print(now);

  }

  @override
  void initState() {
    //  implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}