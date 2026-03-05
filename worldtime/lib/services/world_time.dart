import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
    String location;
    late String time;
    String url1;
    String flag;
    late bool isDay;

    WorldTime({required this.location,required this.url1, required this.flag});


    Future<void> getData() async {
      var url = Uri.https('time.now', 'developer/api/timezone/$url1');
  
      try {
    Response resp = await get(url);

    if (resp.statusCode == 200) {
      Map data = jsonDecode(resp.body);

      String datetime = data['datetime'];
      DateTime now = DateTime.parse(datetime);

      isDay = now.hour >= 6 && now.hour < 19;   // adjust as you like
      time = DateFormat.jm().format(now);       // or .format(now) for 24h
    } else {
      time = "Time unavailable";
      isDay = true;
    }
  } catch (e) {
    time = "Error: $e";
    isDay = true;
  }
}


      

  }


