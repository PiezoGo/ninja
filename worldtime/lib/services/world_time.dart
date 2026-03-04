import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
    String location;
    late String date;
    String url1;
    String flag;

    WorldTime({required this.location,required this.url1, required this.flag});


    void getData() async {
      var url = Uri.https('time.now', 'developer/api/timezone/$url1');
  
      Response resp = await get(url);
  // print(resp.body);

      Map data = jsonDecode(resp.body);
      print(data);

      String datetime = data['datetime'];
      String offset = data['utf_offset'].subString(1,3);
      print(offset);
      DateTime now = DateTime.parse(datetime);
      print(now);

      now = now.add(Duration(hours: int.parse(offset)));

      date = now.toString();
      print(data);
      

  }
}

WorldTime instance =  WorldTime()