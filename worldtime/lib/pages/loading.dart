import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String load = 'Loading....';
  Future<void> getInformation() async{
    WorldTime instance =  WorldTime(location: "London", url1: 'Europe/London', flag: 'germanflage.jpeg');
    await instance.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.date,
    });


    

  }


  @override
  void initState() {
    //  implement initState
    super.initState();
    getInformation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('$load'),
    );
  }
}