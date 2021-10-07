import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cinema extends StatefulWidget {
  @override
  _CinemaState createState() => _CinemaState();
}

class _CinemaState extends State<Cinema> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Films du moment"),),
      body: GridView.count(

        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,


        children: <Widget>[
          SizedBox(
          child: Card(
            child: Column(
              children: [
                Expanded(child: Image.asset("Assets/1.png",width: 150,),),

                Text("The king's man",style: TextStyle(fontSize: 15),),
                Text("18h30"),
              ],
            ),
            color: Colors.teal[300],

          ),),
          SizedBox(
            child: Card(
              child: Column(
                children: [
                  Expanded(child: Image.asset("Assets/2.png",width: 150,),),

                  Text("Ce que le jour",style: TextStyle(fontSize: 13),),
                  Text("doit à la nuit",style: TextStyle(fontSize: 13),),
                  Text("12h"),
                ],
              ),
              color: Colors.teal[300],

            ),),
          SizedBox(
            child: Card(
              child: Column(
                children: [
                  Expanded(child: Image.asset("Assets/3.png",width: 150,),),

                  Text("CRISE",style: TextStyle(fontSize: 15),),
                  Text("20h30"),
                ],
              ),
              color: Colors.teal[300],

            ),),
          SizedBox(
            child: Card(
              child: Column(
                children: [
                  Expanded(child: Image.asset("Assets/4.png",width: 150,),),

                  Text("La vie est belle",style: TextStyle(fontSize: 15),),
                  Text("22h30"),
                ],
              ),
              color: Colors.teal[300],

            ),),
          SizedBox(
            child: Card(
              child: Column(
                children: [
                  Expanded(child: Image.asset("Assets/5.png",width: 150,),),

                  Text("Father",style: TextStyle(fontSize: 15),),
                  Text("18h30"),
                ],
              ),
              color: Colors.teal[300],

            ),),






        ],
      ),
    );
  }
}
