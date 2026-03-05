import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map? data;

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;


    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),

        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                label: Text('Choose Location'),
                icon: Icon(Icons.location_city_rounded),
                ),
              Text(
                data?['location'],
                style: TextStyle(
                  fontSize: 55,
                  letterSpacing: 1,
                ),
              ),
              Text(
                data?['time'],
              )
          
            ],
          ),
        ),
      ),
    );
  }
}