// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class UserList extends StatelessWidget{
//
//   final String apiUrl = "http://95.168.180.122/CircPublis/Cric/getall";
//   List data;
//
//
//   @override
//   void initState() {
//     this.getJsonData();
//     super.initState();
//   }
//
//   Future<String> getJsonData() async {
//     var response = await http.get(
//       // Encoding URL
//         Uri.encodeFull(apiUrl),
//         headers: {"Accept": "application/json"});
//
//     print(response.body);
//
//     setState(() {
//       var convertDataToJson = jsonDecode(response.body);
//       data = convertDataToJson;
//     });
//
//     return "Success";
//   }
//
//   // final _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User List'),
//       ),
//       body:Scrollbar(
//         child: ListView.builder(
//             itemCount: data == null ? 0 : data.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Container(
//                 child: Card(
//                   child: Row(
//                     children: <Widget>[
//                       Container(
//                           width: MediaQuery.of(context).size.width * 0.065,
//                           height: MediaQuery.of(context).size.height * 0.080,
//                           child: Icon(Icons.person_pin, size: 27, color: Colors.redAccent[200])
//                       ),
//                       Container(
//                         child: Text(
//                           data[index]['title'].toString(),
//                           style: TextStyle(
//                               fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             }),
//       ),
//     );
//   }
//
// }