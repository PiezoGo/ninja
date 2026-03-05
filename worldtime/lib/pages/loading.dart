import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
  Future<void> getInformation() async{
    WorldTime instance =  WorldTime(location: "London", url1: 'Africa/Nairobi', flag: 'germanflage.jpeg');
    await instance.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDay': instance.isDay,
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
      body: Center(
        child: SpinKitCircle(
                  color: Colors.amberAccent,
                  size: 60.0,
                ),
      ),
    );
  }
}