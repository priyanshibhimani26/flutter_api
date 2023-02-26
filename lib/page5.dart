import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [


          Image(
            image: NetworkImage(
                'assets/images/ss1.jpg'),
            fit: BoxFit.cover,
          ),
          Container(
            alignment: Alignment.topLeft,
            //margin: EdgeInsets.only(bottom: 580,right: 500),
            child: IconButton(onPressed: () {
              Navigator.pop(context);
            },icon: Icon(Icons.arrow_back,size: 22,),),
          ),
          Container(
            alignment: Alignment.topRight,
           // margin: EdgeInsets.only(bottom: 570,left: 290),
            child: IconButton(onPressed: () {
              Navigator.pop(context);
            },icon: Icon(Icons.bookmark_border_outlined,size: 22,),),
          ),

          Container(
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
                                  Expanded(child: Container(margin:EdgeInsets.only(top: 20),child: Text("Easy"))),
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
                                  Expanded(child: Container(margin: EdgeInsets.only(top: 20),child: Text("20 min"))),
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
                                  Expanded(child: Container(margin: EdgeInsets.only(top: 20),child: Text("4.8"))),
                                ],
                              ))
                        ],
                      )),
                  Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 218,top: 10),
                                child: Text(
                                  "Samosa",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Lora",
                                    fontSize: 25,
                                  ),
                                )),flex: 2,
                          ),
                          Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 169, bottom: 10),
                                child: Text(
                                  "Classic indian racipe",
                                  style: TextStyle(
                                      fontFamily: "Questrial",
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15
                                  ),
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
                                  margin: EdgeInsets.only(right: 85,top: 8),
                                  child: Text(
                                    "Ingredients",
                                    style: TextStyle(fontFamily: "Questrial",fontSize: 20,fontWeight: FontWeight.bold),
                                  ),
                                ),flex: 2,),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(right: 65),
                                  child: Text(
                                    " How many servings ?",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Questrial", fontSize: 13),
                                  ),
                                ),flex: 2,)
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
                                color: Color(0xFFEEEEEE),
                                onPressed: () {},
                              ),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: Row(
                          children: [
                            Expanded(child:Container (child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network('https://cdn-icons-png.flaticon.com/512/509/509998.png',height: 50,width: 50,),
                            ),

                            )),
                            Expanded(child: Container(child: Text(" Aallu masala"),)),
                            Expanded(child: Container(margin: EdgeInsets.only(left: 100),child: Text("2 tb"),)),
                          ],
                        )),
                        Expanded(child: Row(
                          children: [
                            Expanded(child:Container (child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network('https://cdn-icons-png.flaticon.com/512/4264/4264676.png',height: 50,width: 50,),
                            ),

                            )),
                            Expanded(child: Container(child: Text("Oil"),)),
                            Expanded(child: Container(margin: EdgeInsets.only(left: 80),child: Text("400 g"),)),
                          ],
                        )),
                        Expanded(child: Row(
                          children: [
                            Expanded(child:Container (child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network('https://www.shutterstock.com/image-photo/wheat-seed-flour-small-burlap-260nw-76300510.jpg',height: 52,width: 50,),
                            ),

                            )),
                            Expanded(child: Container(child: Text("Maida"),)),
                            Expanded(child: Container(margin: EdgeInsets.only(left: 70),child: Text("1 bowl"),)),
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
        ],
      ),
    );
  }
}
