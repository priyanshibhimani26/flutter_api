import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocalJsonParsing extends StatefulWidget {
  @override
  State<LocalJsonParsing> createState() => _LocalJsonParsingState();
}

class _LocalJsonParsingState extends State<LocalJsonParsing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<http.Response>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return  ListView.builder(
              itemBuilder:(context,index){
                return Container(
                  child: Text(jsonDecode(snapshot.data!.body.toString())[index]['image'].toString()),
                );
              },
              itemCount: jsonDecode(snapshot.data!.body.toString()).length,

            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        future: getDataFromWebServer(),
      ),
    );
  }

  Future<http.Response> getDataFromWebServer() async {
    var response = await http
        .get(Uri.parse('https://630c4c7853a833c534274e17.mockapi.io/dishes'));
    print(response.body.toString());
    return response;
  }
}
