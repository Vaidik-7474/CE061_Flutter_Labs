import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String? location; // REAL LOCATION NAME FOR UI

  String? time; // the time in that location..
  String? flag; // flag images related to location country...do it yourself
  String? url; // end point of static url...which will change every timewhen location will change
  WorldTime({ this.location,this.flag,this.url });
  Future<void> getTime() async {
// Make Request for time and receive response
    Response response = await
    get(Uri.parse('http://worldtimeapi.org/api/timezone/$url')); // Asia/Kolkata
    Map timeData = jsonDecode(response.body);
// Get particular property form timeData...
    String dateTime = timeData['datetime'];
    String offset = timeData['utc_offset']; //not dst_offset
    String offsetHours = offset.substring(1,3);
    String offsetMinutes = offset.substring(4,6);
// create DateTime object
    DateTime currenttime = DateTime.parse(dateTime);
    currenttime = currenttime.add(
        Duration(minutes:
        int.parse(offsetMinutes),hours:int.parse(offsetHours)));
//set the time property of class...
    time = DateFormat.jm().format(currenttime);
  }

}