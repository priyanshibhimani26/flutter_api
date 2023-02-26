import 'dart:html';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class InsertUser extends StatefulWidget {
  InsertUser(this.map);

  Map? map;

  @override
  State<InsertUser> createState() => _InsertUserState();
}

class _InsertUserState extends State<InsertUser> {
  var formkey = GlobalKey<FormState>();

  var nameController = TextEditingController();

  var imgController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.map == null ? '' : widget.map!['name'];
    imgController.text = widget.map == null ? '' : widget.map!['image'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Container(
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter,
                  colors: [Color(0xFFEF5350),Colors.white70]),
              // boxShadow: [
              //   BoxShadow(
              //       color: Colors.grey,
              //       blurRadius: 15.0,
              //       spreadRadius: 5.0,
              //       offset: Offset(5.0, 5.0))
              // ]
          ),
          child: Column(
            children: [
              TextFormField(
                decoration: (InputDecoration(hintText: "Enter name")),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "Enter valid name";
                  }
                },
                controller: nameController,
              ),
              TextFormField(
                decoration: (InputDecoration(hintText: "Enter ImageUrl")),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "Enter valid imgurl";
                  }
                },
                controller: imgController,
              ),
              Container(
                height: 35,
                width: 100,
                margin: EdgeInsets.only(top: 10),
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.white))),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        if (widget.map == null) {
                          insertuser()
                              .then((value) => Navigator.of(context).pop(true));
                        } else {
                          updateuser(widget.map!['id'])
                              .then((value) => Navigator.of(context).pop(true));
                        }
                      }
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Color(0xFFEF5370),fontFamily: 'Fredoka_One'),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateuser(id) async {
    Map map = {};
    map["name"] = nameController.text;
    map["image"] = imgController.text;
    var response1 = await http.put(
        Uri.parse('https://630c4c7853a833c534274e17.mockapi.io/dishes/$id'),
        body: map);
    print(response1.body);
  }

  Future<void> insertuser() async {
    Map map = {};
    map["name"] = nameController.text;
    map["image"] = imgController.text;
    var response1 = await http.post(
        Uri.parse('https://630c4c7853a833c534274e17.mockapi.io/dishes'),
        body: map);
    print(response1.body);
  }
}
