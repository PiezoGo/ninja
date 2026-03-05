import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';


class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});
 
  @override
  State<ChooseLocation>  createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url1: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url1: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url1: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url1: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url1: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url1: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url1: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url1: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
        // backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () => {},
              title: Text(locations[index].location),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/${locations[index].flag}'),
              ),
            ),
          );
        },
      ),
      
    );
  }
}