import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stb_hackaton/cinema.dart';

class Boutique extends StatelessWidget{
  //var
  List<CarView> cars = [
    CarView("Jardin Public"," Tunis","Assets/robot.jpg","Manhart V8 5.5L ", 33),
    CarView("Café"," Djerba","Assets/cafe.jpg","fdsfd ", 33),
    CarView("Restaurant"," Tunis","Assets/resto.jpg","hgggg ", 33),

  ];

  //Constructor
  Boutique();

  @override
  Widget build(BuildContext context) {

    return GridView.count(

      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        InkWell(
          onTap: (){},
          child: Card(
            child: Column(
              children: [
                FaIcon(FontAwesomeIcons.coffee,size: 110,),
                Text("Café",style: TextStyle(fontSize: 25),)
              ],
            ),
            color: Colors.teal[100],
          ),
        ),
        InkWell(
          onTap: (){},
          child: Card(
            child: Column(
              children: [
                FaIcon(FontAwesomeIcons.utensils,size: 110,),
                Text("Restaurant",style: TextStyle(fontSize: 25),)
              ],
            ),
            color: Colors.teal[100],
          ),
        ),
        InkWell(
          onTap: (){},
          child: Card(
            child: Column(
              children: [
                FaIcon(FontAwesomeIcons.landmark,size: 110,),
                Text("Visite des monuments",style: TextStyle(fontSize: 16,),)
              ],
            ),
            color: Colors.teal[100],
          ),
        ),
        InkWell(

          onTap: (){Navigator.push(context,MaterialPageRoute(
              builder: (BuildContext context){
                return Cinema();
              }
          )) ;},
          child: Card(
            child: Column(
              children: [

                FaIcon(FontAwesomeIcons.film,size: 110,),
                Text("Cinéma",style: TextStyle(fontSize: 25,),)
              ],
            ),
            color: Colors.teal[100],
          ),
        ),
        InkWell(
          onTap: (){},
          child: Card(
            child: Column(
              children: [
                FaIcon(FontAwesomeIcons.swimmingPool,size: 110,),
                Text("Piscine",style: TextStyle(fontSize: 25,),)
              ],
            ),
            color: Colors.teal[100],
          ),
        ),
        InkWell(
          onTap: (){},
          child: Card(
            child: Column(
              children: [
                FaIcon(FontAwesomeIcons.bookOpen,size: 110,),
                Text("Lecture",style: TextStyle(fontSize: 25,),)
              ],
            ),
            color: Colors.teal[100],
          ),
        ),

      ],
    );
  }

}

class CarView extends StatelessWidget {
  //var
  String _make;
  String _model;
  String _image;
  String _description;
  int _quantity;
  CarView(this._make, this._model, this._image, this._description, this._quantity);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        //Navigator.pushNamed(context, "/add");
      },
      child: Card (
        child: Column (
          children: [
            Image.asset(this._image, ),
            Container(
              height: 35,
              child: Column(
                children: [
                  Text(this._make),
                  Text(this._model),
                ],
              ),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            )
          ],
        ),
      ),
    );
  }

}