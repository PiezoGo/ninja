import 'package:flutter/material.dart';


class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});
 
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () => 'Michael Ochieng' );

    String bio = await Future.delayed(Duration(seconds: 2), () => 'Software Engineer from Multimedia university of Kenya!!' );

    print('$username - $bio');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      
      body: Text('This if the choose location page'),
    );
  }
}