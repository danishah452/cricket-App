import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class fetch extends StatefulWidget {
  @override
  _fetchState createState() => _fetchState();
}

class _fetchState extends State<fetch> {
  final String apiUrl = "http://95.168.180.122/CircPublis/Cric/getall";
  List data;

  @override
  void initState() {
    this.getJsonData();
    super.initState();
  }

  Future<String> getJsonData() async {
    var response = await http.get(
        // Encoding URL
        Uri.encodeFull(apiUrl),
        headers: {"Accept": "application/json"});

    print(response.body);

    setState(() {
      var convertDataToJson = jsonDecode(response.body);
      data = convertDataToJson;
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Cricket Matches',
          style: TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Container(
          // color: Colors.black,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            // color: Colors.red,
            image: DecorationImage(
              image: AssetImage("assets/1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: size.width * 0.8,
                        height: size.height * 0.3,
                        // color: Colors.black,


                        child: Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35)),
                          child: Column(
                              children: <Widget>[
                                Container(
                                  // width: size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          radius: 30,
                                          backgroundImage: NetworkImage(
                                            data[index]['imgTeam1'],
                                          ),
                                        ),
                                        Text(

                                          'VS',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,color: Colors.white),
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          radius: 30,
                                          backgroundImage: NetworkImage(
                                            data[index]['imgTeam2'],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceAround,
                                  children: [
                                    Container(
                                      child: Text(
                                        data[index]['team1'].toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        data[index]['team2'].toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceAround,
                                  children: [
                                    Container(
                                      child: Text(
                                        data[index]['score1'].toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        data[index]['score2'].toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Text(
                                    data[index]['results'].toString(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,color: Colors.white),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    data[index]['matchDate'].toString(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,color: Colors.white),
                                  ),
                                ),
                              ]),
                        ),
                      ),



                  ),

                ],
              );
            }),
                    ),
                  ),
    );



  }
}
