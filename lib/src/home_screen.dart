import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Text("Discover",
              style: GoogleFonts.pTSerif(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  textStyle: TextStyle(color: Color(0xff935D32)))),
          Text(
            "Your daily coffee need",
            style: GoogleFonts.gelasio(
              fontStyle: FontStyle.italic,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              buildItemDrinks("Recommend", () {
                print("Recom");
              }),
              buildItemDrinks("Hot Drink", () {
                print("hot");
              }),
              buildItemDrinks("Cold Drink", () {
                print("cold");
              }),
            ],
          ),
          buildItemCards(images, () {
                print("coffee_1.jpg");
              }),
//          Stack(
//            children: <Widget>[
//              buildItemCards("assets/coffee_1.jpg", () {
//                print("coffee_1.jpg");
//              }),
//              buildItemCards("assets/coffee_2.jpg", () {
//                print("coffee_2.jpg");
//              }),
//              buildItemCards("assets/coffee_3.jpg", () {
//                print("coffee_3.jpg");
//              }),
//            ],
//          ),
        ],
      ),
    ));
  }

  List images = ["assets/coffee_1.jpg", "assets/coffee_2.jpg", "assets/coffee_3.jpg"];

  Widget buildItemDrinks(String category, Function onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
              color: Color(0xff935D32),
              width: 2.0,
            )),
          ),
          child: Center(
            child: Text(
              category,
              style: GoogleFonts.roboto(
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItemCards(List cardUrls, Function onTap) {
    CardController controller;

    return Container(
      height: 300,
      width: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardUrls.length,
        itemBuilder: (context, index){
          return Card(
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                child: Image.asset(cardUrls[index]),
              ),
            ),
          );
        },
      )
    );
  }
}
