import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ?  data : ModalRoute.of(context)!.settings.arguments as Map;

    String bgImage = data['isDay'] ? 'day.jpeg' : 'night.jpeg';

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () async{
                    dynamic result = await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'location': result['location'],
                        'flag': result['flag'],
                        'time': result['time'],
                        'isDay': result['isDay'],
                      };
                    });
                  }
                  ,
                  label: Text(
                    'Choose Location',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  icon: Icon(Icons.location_city_rounded),
                  ),
                Text(
                  data['location'],
                  style: TextStyle(
                    fontSize: 55,
                    color: Colors.white70,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  data['time'],
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}