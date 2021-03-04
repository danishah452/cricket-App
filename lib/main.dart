import 'package:flutter/material.dart';

import 'fetchdata.dart';
import 'homepage.dart';
import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: login(),
    );
  }
}


// return Container(
// width: size.width,
// height: size.height,
// color: Colors.red,
// child: Card(
// color: Colors.grey,
// elevation: 5,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(25.0),
// ),
// child: InkWell(
// onTap: () {
// print("tapped");
// },
// child: Column(children: [
// Container(
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceEvenly,
// children: [
// CircleAvatar(
// radius: 30,
// backgroundImage: NetworkImage(
// data[index]['imgTeam1'],
// ),
// ),
// Text(
// 'VS',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 22),
// ),
// CircleAvatar(
// radius: 30,
// backgroundImage:
// NetworkImage(data[index]['imgTeam2']),
// ),
// ],
// ),
// ),
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Container(
// child: Text(
// data[index]['team1'].toString(),
// style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold),
// ),
// ),
// Container(
// child: Text(
// data[index]['team2'].toString(),
// style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold),
// ),
// ),
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Container(
// child: Text(
// data[index]['score1'].toString(),
// style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold),
// ),
// ),
// Container(
// child: Text(
// data[index]['score2'].toString(),
// style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold),
// ),
// ),
// ],
// ),
// Container(
// child: Text(
// data[index]['results'].toString(),
// style: TextStyle(
// fontSize: 20, fontWeight: FontWeight.bold),
// ),
// ),
// ]),
// ),
// ));

