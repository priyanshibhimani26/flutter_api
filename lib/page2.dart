//import 'package:carousel_pro/carousel_pro.dart';
import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobiledesignwithapi/insert_user.dart';
import 'package:mobiledesignwithapi/page3.dart';
import 'package:mobiledesignwithapi/page4.dart';
import 'package:mobiledesignwithapi/page5.dart';
import 'package:http/http.dart' as http;
import 'package:mobiledesignwithapi/search.dart';

// int current = 0
// String im='';
// Page3(this.im);
class Page2 extends StatefulWidget {
  @override

  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    // final List<String> imgList = [
    //   //"https://b.zmtcdn.com/data/pictures/1/20112071/dee3c2ccaf797fd427d119c2fbf79cb1.jpg",
    //   "https://www.shutterstock.com/image-photo/italian-pizza-ham-salami-black-260nw-1824157430.jpg",
    //   "https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2022/04/9956e-hyderabad-dishes.jpg?fit=1000%2C667&ssl=1",
    //   "https://thumbs.dreamstime.com/b/vietnamese-vegan-bun-bo-hue-delicious-fresh-prepared-chay-vegetarian-soup-served-local-restaurant-mui-ne-vietnam-192224977.jpg"
    // ];
    // final List<String> dishes =[
    //   'Pizza',
    //   'Cheese Burgur',
    //   'Rasmalai'
    // ];
    // List<Widget> generateImageTiles(){
    //   return imgList.map((e) => ClipRRect(child: Image.network(e,fit:BoxFit.cover,),borderRadius: BorderRadius.circular(15),)).toList();
    // }

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(),
            flex: 1,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Text(
                      textDirection: TextDirection.ltr,
                      'What do you want \nto cook today?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lora",
                        fontSize: 26,
                      ),
                    ),
                    margin: EdgeInsets.only(left: 10, top: 30)),
                Container(
                  child: Row(
                    children: [
                      //Expanded(child: Container()),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 15, left: 15),
                          child: TextFormField(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return SearchBarScreen();
                                  }));
                            },
                            decoration: InputDecoration(
                              // contentPadding: const EdgeInsets.symmetric(
                              // vertical: 5, horizontal: 5),
                              hintText: "Recipe",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                              fillColor: Color(0xFFF5F5F5),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(55),
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: const Icon(
                                Icons.search_outlined,
                                color: Color(0xFFEF5350),
                                size: 30,
                              ),
                              prefixIconColor: Color(0xFFEF5350),
                            ),
                          ),
                        ),
                      ),
                      //Expanded(child: Container()),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            child: (Text(
                              "Populer launch recipies",
                              style: TextStyle(
                                  fontFamily: "Questrial",
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )),
                            margin: EdgeInsets.only(top: 10, left: 15),
                          ),
                          flex: 2),
                      Expanded(
                          child: Container(
                        child: Text("View all",
                            style: TextStyle(
                                fontFamily: "Questrial",
                                //fontWeight: FontWeight.bold,
                                color: Colors.grey)),
                        padding: EdgeInsets.only(left: 50),
                        margin: EdgeInsets.only(top: 15),
                      ))
                    ],
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Container(
                          //alignment: Alignment.center,
                          height: 370,
                          width: 337,
                          child: FutureBuilder<http.Response>(
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                List<dynamic> datas =
                                    jsonDecode(snapshot.data!.body.toString());
                                datas.reversed;
                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      jsonDecode(snapshot.data!.body.toString())
                                          .length,
                                  itemBuilder: (context, index) {
                                    {
                                      return InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) {
                                              return Page3(jsonDecode(snapshot
                                                  .data!.body
                                                  .toString())[
                                              index]['image'],jsonDecode(snapshot
                                                  .data!.body
                                                  .toString())[
                                              index]['name']);
                                            },
                                          ));
                                        },
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    // height: 200,
                                                    width: 250,
                                                    height: 350,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        image: DecorationImage(
                                                          image: NetworkImage(
                                                              jsonDecode(snapshot
                                                                      .data!.body
                                                                      .toString())[
                                                                  index]['image']),
                                                          fit: BoxFit.cover,
                                                        )),
                                                    //child: Image.network(jsonDecode(snapshot.data!.body.toString())[index]['StudentImage']),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          top: 280),
                                                      child: Text(
                                                        jsonDecode(snapshot
                                                                    .data!.body
                                                                    .toString())[
                                                                index]['name']
                                                            .toString(),
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 320),
                                                    child: Text("20 min",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                  Container(
                                                    color: Colors.white,
                                                    child: IconButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .push(
                                                                MaterialPageRoute(
                                                          builder: (context) {
                                                            return InsertUser(
                                                                jsonDecode(snapshot
                                                                        .data!.body
                                                                        .toString())[
                                                                    index]);
                                                          },
                                                        )).then((value) {
                                                          if (value == true) {
                                                            setState(() {});
                                                          }
                                                        });
                                                      },
                                                      icon: Icon(
                                                        Icons.edit,
                                                        size: 22,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 37,
                                                    width: 40,
                                                    margin: EdgeInsets.only(
                                                        top: 313, left: 210),
                                                    color: Colors.white,
                                                    child: TextButton(
                                                        onPressed: () {
                                                          showAlert(jsonDecode(
                                                                  snapshot
                                                                      .data!.body
                                                                      .toString())[
                                                              index]['id']);
                                                        },
                                                        child: Icon(
                                                          Icons.delete,
                                                          size: 25,
                                                          color: Colors.red,
                                                        )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  },
                                );
                              } else {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            },
                            future: getDataFromWebServer(),
                          ),
                        )
                      ],
                    ),
                  ),
                  flex: 15,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10, bottom: 5),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              color: Color(0xFFEF5350),
                              Icons.home,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 25, bottom: 15),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return InsertUser(null);
                              })).then((value) {
                                if (value == true) {
                                  setState(() {});
                                }
                              });
                            },
                            icon: Icon(
                              color: Color(0xFFEF5350),
                              Icons.add,
                              size: 27,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 35, bottom: 15),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return InsertUser(null);
                              })).then((value) {
                                if (value == true) {
                                  setState(() {});
                                }
                              });
                            },
                            icon: Icon(
                              color: Color(0xFFEF5350),
                              Icons.delete,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 25, bottom: 15),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return InsertUser(null);
                              }));
                            },
                            icon: Icon(
                              color: Color(0xFFEF5350),
                              Icons.bookmark_border_outlined,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  flex: 2,
                ),
              ],
            ),
            flex: 20,
          ),
          Expanded(
            child: Container(),
            flex: 1,
          ),
        ],
      ),
    );
  }

  void showAlert(id) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Alert!'),
          content: Text('Are you sure want to delete?'),
          actions: [
            TextButton(
                onPressed: () async {
                  http.Response res = await deleteDish(id);
                  if (res.statusCode == 200) {
                    Navigator.of(context).pop();
                    setState(() {});
                  }
                },
                child: Text('yes')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('No'))
          ],
        );
      },
    );
  }

  Future<http.Response> deleteDish(id) async {
    var response = await http.delete(
        Uri.parse('https://630c4c7853a833c534274e17.mockapi.io/dishes/$id'));
    return response;
  }

  Future<http.Response> getDataFromWebServer() async {
    var response = await http
        .get(Uri.parse('https://630c4c7853a833c534274e17.mockapi.io/dishes'));
    return response;
  }
}
