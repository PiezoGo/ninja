import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
    String location;
    late String date;
    String url1;
    String flag;

    WorldTime({required this.location,required this.url1, required this.flag});


    Future<void> getData() async {
      var url = Uri.https('time.now', 'developer/api/timezone/$url1');
  
      Response resp = await get(url);
  // print(resp.body);

      Map data = jsonDecode(resp.body);
      // print(data);

      String datetime = data['datetime'];
      // String offset = data['utc_offset'];
      // print(offset);
      DateTime now = DateTime.parse(datetime);

      // now = now.add(Duration(hours: int.parse(offset)));

      date = DateFormat.jm().format(now);
      // print(data);
      

  }
}

