import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'page2.dart';


class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Carousel(
              overlayShadow: false,
              overlayShadowColors: Colors.white,
              dotVerticalPadding: 97,
              dotColor: Colors.white,
              dotBgColor: Color(0x00000000),
              images: [

                Image.asset(
                  //'https://media.istockphoto.com/id/1270164391/vector/young-woman-cook-preparing-a-cake-in-kitchen.jpg?s=612x612&w=0&k=20&c=k8-5nUS2jxqFbGY-cK8F65mp13a8NW9h76jIC6aHM0w=',
                  'assets/images/cooking2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://aws.wideinfo.org/foodnachos.com/wp-content/uploads/2023/01/20101522/como20hacer20la20mejor20pizza20del20mundo.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://i2.wp.com/thegastronomicbong.com/wp-content/uploads/2021/01/Motichoor-ladoo-recipe-1.jpg?resize=800%2C1200&ssl=1',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1612929633738-8fe44f7ec841?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NXx8fGVufDB8fHx8&w=1000&q=80',
                  fit: BoxFit.cover,
                ),

              ],

            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 500),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                height: 50,
                width: 300,
                child: InkWell(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return Page2();
                            }));
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            color: Color(0xFFE65100) ,fontSize: 17,fontFamily: "Fredoka_One"),
                      )),
                ),
              ),
            ),
            Text(
              "  Enjoy \n  Cooking",
              style: TextStyle(
                  fontFamily: 'Lora',
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                  color: Colors.white),
            ),
            Text(
              "  \n\n\n\n\n\n       delicius and detailed resturant recipes\n       on your phone",
              style: TextStyle(
              fontFamily: 'Lora',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
