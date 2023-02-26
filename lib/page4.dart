import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            image: NetworkImage(
                'assets/images/dish4.jpg'),
            fit: BoxFit.cover,
          ),

          Positioned(


            child: Container(
              alignment: Alignment.topLeft,
              //margin: EdgeInsets.only(bottom: 580,right: 500),
              child: IconButton(onPressed: () {
                Navigator.pop(context);
              },icon: Icon(Icons.arrow_back,size: 22,color: Colors.white,),),
            ),
          ),
          Positioned(


            child: Container(
              alignment: Alignment.topRight,
             // margin: EdgeInsets.only(bottom: 570,left: 290),
              child: IconButton(onPressed: () {

              },icon: Icon(Icons.bookmark_border_outlined,size: 22,color: Colors.white,),),
            ),
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
                                margin: EdgeInsets.only(right: 145,top: 10),
                                child: Text(
                                  "Cheese burgur",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Lora",
                                    fontSize: 25,
                                  ),
                                )),flex: 2,
                          ),
                          Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 163, bottom: 10),
                                child: Text(
                                  "Classic italiyan racipe",
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
                                  margin: EdgeInsets.only(right: 90,top: 8),
                                  child: Text(
                                    "Ingredients",
                                    style: TextStyle(fontFamily: "Questrial",fontSize: 20,fontWeight: FontWeight.bold),
                                  ),
                                ),flex: 2,),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(right: 65),
                                  child: Text(
                                    "How many servings ?",
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
                              child: Image.network('https://media.istockphoto.com/id/685689158/vector/french-cheese-icon-flat-style.jpg?s=612x612&w=0&k=20&c=TIh57ju4f0UmpnboLk6sM6f0O4Vtl2O71mXjDd9ZAQo=',height: 50,width: 50,),
                            ),

                            )),
                            Expanded(child: Container(child: Text("cheese"),)),
                            Expanded(child: Container(margin: EdgeInsets.only(left: 70),child: Text("4 slice"),)),
                          ],
                        )),
                        Expanded(child: Row(
                          children: [
                            Expanded(child:Container (child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTghbek0h219qEiTSfj_dvCrqrqhD2XBq65BlbOOyB8brijhGfd05xvXfuav2SswHrztCk&usqp=CAU',height: 50,width: 50,),
                            ),

                            )),
                            Expanded(child: Container(child: Text("Bread"),)),
                            Expanded(child: Container(margin: EdgeInsets.only(left: 100),child: Text("2"),)),
                          ],
                        )),
                        Expanded(child: Row(
                          children: [
                            Expanded(child:Container (child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network('https://cdn-icons-png.flaticon.com/512/4163/4163765.png',height: 52,width: 50,),
                            ),

                            )),
                            Expanded(child: Container(child: Text("Vegetable"),)),
                            Expanded(child: Container(margin: EdgeInsets.only(left: 100),child: Text("3"),)),
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
