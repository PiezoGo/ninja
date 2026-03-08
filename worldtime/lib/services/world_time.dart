import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
    String location;
    late String time = '';
    String url1;
    String flag;
    late bool isDay = true;

    WorldTime({required this.location,required this.url1, required this.flag});


    Future<void> getData() async {
    var url = Uri.https('time.now', '/developer/api/timezone/$url1');  
      try {
    Response resp = await get(url);

    if (resp.statusCode == 200) {
      Map data = jsonDecode(resp.body);
      print(data);
      String datetime = data['datetime'];
      String offset = data['utc_offset'];
      offset = offset.substring(1,3);
      String operator = data['utc_offset'];
      operator = operator.substring(0,1);
      print(operator);
      DateTime now = DateTime.parse(datetime);
      print(now);
      if (operator == '+') {
        now = now.add(Duration(hours: int.parse(offset)));
      }
      else if(operator == '-'){
        now = now.subtract(Duration(hours: int.parse(offset)));
      }else{
        print('null operator');
      }

      print(offset);
      
      print(now);
      isDay = now.hour >= 6 && now.hour < 19;   // adjust as you like
      time = DateFormat.jm().format(now);       // or .format(now) for 24h
    } 
  } catch (e) {
    time = "Error: $e";
    print(' error $time');
    isDay = true;
  }
}


      

  }


