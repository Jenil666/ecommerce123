import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details extends StatefulWidget {
  String Pname = "", Pimage = "", Pprice="",Pdetails = "";

  details(String name, String image, String details, String price) {
    Pprice=price;//"55,000","2,00,000","30,000"
    Pname = name;//"Television","Mobile","Headphones"
    Pimage = image;
    Pdetails = details;

  }

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(widget.Pimage),
            ),
          ),
          Expanded(
            //"55 inch","4k panel","Dolby Soround Sound","OnePlus"
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                    )
                  ]
              ),
              alignment: Alignment.center,
              child: Text(
                "${widget.Pprice}\n${widget.Pdetails}\n${widget.Pname}",
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 35),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
