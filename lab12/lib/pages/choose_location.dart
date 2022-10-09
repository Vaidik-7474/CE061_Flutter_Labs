import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lab12/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  List<WorldTime> locations = [
    WorldTime(location: 'kolkata',flag: 'india.png',url: 'Asia/Kolkata'),
    WorldTime(location: 'Manila',flag: 'philippines.png',url: 'Asia/Manila'),
    WorldTime(location: 'Singapore',flag: 'singapore.png',url: 'Asia/Singapore'),
    WorldTime(location: 'Brisbane',flag: 'australia.png',url: 'Australia/Brisbane'),
    WorldTime(location: 'Madrid',flag: 'spain.png',url: 'Europe/Madrid'),
    WorldTime(location: 'Vienna',flag: 'austria.png',url: 'Europe/Vienna'),
    WorldTime(location: 'Maldives',flag: 'maldives.png',url: 'Indian/Maldives'),
    WorldTime(location: 'Johannesburg',flag: 'south-africa.png',url:
    'Africa/Johannesburg'),
    WorldTime(location: 'Barbados',flag: 'barbados.png',url: 'America/Barbados'),
    WorldTime(location: 'Costa_Rica',flag: 'costa-rica.png',url:
    'America/Costa_Rica'),
    WorldTime(location: 'Jamaica',flag: 'jamaica.png',url: 'America/Jamaica'),
    WorldTime(location: 'Phoenix',flag: 'usa.png',url: 'America/Phoenix'),
    WorldTime(location: 'Broken_Hill',flag: 'australia.png',url:
    'Australia/Broken_Hill'),
    WorldTime(location: 'Moscow',flag: 'russia.png',url: 'Europe/Moscow'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
// navigate to home screen by popping instead of pushing new replica
// of home screen
    Navigator.pop(context,{
      'location' : instance.location,
      'flag' : instance.flag,
      'time' : instance.time,
      'isDayTime' : instance.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
// print('BUILD FUNCTION RUN IN CHOOSE LOCATION...');
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
// when we come/route from different screen IN APPBAR FLUTTER WILL DEFAULTLY
// PLACED "BACK ARROW <- .....
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 0,
      ),
/*
body: ElevatedButton(
onPressed: () {
setState(() {
counter += 1;
});
},
child: Text('COUNTER IS : $counter'),
),
*/
    body: ListView.builder(
      itemCount: locations.length,
      itemBuilder: (context,index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
          child: Card(
            child: ListTile(
              onTap: () {
                updateTime(index);
              },
              title: Text(locations[index].location.toString()),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/flags/${locations[index].flag}'),
              ),
            ),
          ),
        );
      },
    ),
    );
  }
}