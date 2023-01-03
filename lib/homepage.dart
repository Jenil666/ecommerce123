import 'package:ecommerce/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List Pname=["Television","Mobile","Headphones"];
  List Pprice=["55,000","2,00,000","30,000"];
  List Pdetails=["OnePlus","Apple","Sony"];
  List Pimage=["assets/images/oneplus.png","assets/images/iphone.jpg","assets/images/headphones.jpg"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Amazon"),
        leading: Icon(Icons.menu_open),
        actions: [
          Icon(Icons.search_rounded),
        ],
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => details(Pname[0],Pimage[0],Pdetails[0],Pprice[0])));
              });
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 100,
                    width: 100,
                    child: Image.asset(Pimage[0]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 60,
                    width: 300,
                    //color: Colors.red,
                    child: Text("${Pname[0]}\n${Pprice[0]}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => details(Pname[1],Pimage[1],Pdetails[1],Pprice[1]),));
              });
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 100,
                    width: 100,
                    child: Image.asset(Pimage[1]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 60,
                    width: 300,
                    //color: Colors.red,
                    child: Text("${Pname[1]}\n${Pprice[1]}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => details(Pname[2],Pimage[2],Pdetails[2],Pprice[2]),));
              });
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 100,
                    width: 100,
                    child: Image.asset(Pimage[2]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 60,
                    width: 300,
                    //color: Colors.red,
                    child: Text("${Pname[2]}\n${Pprice[2]}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
