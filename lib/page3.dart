import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  String im = '',nm='';

  Page3(this.im,this.nm);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            image: NetworkImage(widget.im),
            fit: BoxFit.cover,
          ),
          Container(
            alignment: Alignment.topLeft,
            //margin: EdgeInsets.only(bottom: 580,right: 500),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 22,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            //margin: EdgeInsets.only(bottom: 570,left: 290),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.bookmark_border_outlined,
                size: 22,
              ),
            ),
          ),
          Positioned(
            // bottom: 10,
            // height: 300,
            // width: double.infinity,
            //top: MediaQuery.of(context).size.height /0.5,

            child: Container(
                height: 10,
                width: 10,
                margin: EdgeInsets.only(top: 290),
                child: Column(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: Icon(
                                              Icons.pinch_outlined,
                                              color: Color(0xFFEF5350),
                                            ))),
                                    Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: Text("Easy"))),
                                  ],
                                )),
                            Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: Icon(
                                              Icons.access_time,
                                              color: Color(0xFFEF5350),
                                            ))),
                                    Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: Text("20 min"))),
                                  ],
                                )),
                            Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: Icon(
                                              Icons.star_outline_rounded,
                                              color: Color(0xFFEF5350),
                                            ))),
                                    Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: Text("4.8"))),
                                  ],
                                ))
                          ],
                        )),
                    Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                  margin: EdgeInsets.only(right: 170, top: 10),
                                  child: Text(
                                    widget.nm,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Lora",
                                      fontSize: 25,
                                    ),
                                  )),
                              flex: 2,
                            ),
                            Expanded(
                              child: Container(
                                  margin: EdgeInsets.only(right: 143, bottom: 10),
                                  child: Text(
                                    "Classic hydrabadi racipe",
                                    style: TextStyle(
                                        fontFamily: "Questrial",
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15),
                                  )),
                            ),
                          ],
                        )),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 80, top: 8),
                                    child: Text(
                                      'Ingrediyant',
                                      style: TextStyle(
                                          fontFamily: "Questrial",
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 65),
                                    child: Text(
                                      "  How many servings ?",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: "Questrial",
                                          fontSize: 13),
                                    ),
                                  ),
                                  flex: 2,
                                )
                              ],
                            ),
                            flex: 2,
                          ),
                          Expanded(
                              child: Container(
                                width: 10,
                                padding: EdgeInsets.all(15),
                                child: new MaterialButton(
                                  child: Row(
                                    children: [
                                      Expanded(child: Center(child: Text("- "))),
                                      Expanded(child: Center(child: Text("2 "))),
                                      Expanded(child: Center(child: Text("+ "))),
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  color: Color(0xFFF5F5F5),
                                  onPressed: () {},
                                ),
                              )),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(25),
                                          child: Image.network(
                                            'https://t4.ftcdn.net/jpg/02/80/57/07/360_F_280570712_LuChCGd4YkvXq2ksFSD6cTKgGj3mKnCW.jpg',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      child: Container(
                                        child: Text("milk"),
                                      )),
                                  Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 100),
                                        child: Text("1 L"),
                                      )),
                                ],
                              )),
                          Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(25),
                                          child: Image.network(
                                            'https://thumbs.dreamstime.com/b/ghee-butter-jar-vector-icon-healthy-eating-cartoon-illustration-ghee-butter-jar-vector-icon-healthy-eating-cartoon-illustration-119378855.jpg',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      child: Container(
                                        child: Text("ghee"),
                                      )),
                                  Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 80),
                                        child: Text("400 g"),
                                      )),
                                ],
                              )),
                          Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(25),
                                          child: Image.network(
                                            'https://www.shutterstock.com/image-photo/wheat-seed-flour-small-burlap-260nw-76300510.jpg',
                                            height: 52,
                                            width: 50,
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      child: Container(
                                        child: Text("corn flour"),
                                      )),
                                  Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 70),
                                        child: Text("1 bowl"),
                                      )),
                                ],
                              )),
                        ],
                      ),
                      flex: 2,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70)))),
          ),
        ],
      ),
    );
  }
}
