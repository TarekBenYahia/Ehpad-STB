import 'package:flutter/material.dart';


class ListeMalades extends StatelessWidget{
  //var
  List<CarView> cars = [
    CarView("Christine"," Dupont","Assets/client_1.png","Manhart V8 5.5L ", 33),
    CarView("Alexandre"," Hoffa","Assets/comment_1.png", "Rabbi yba9i esseter!", 128),
    CarView("Clement","Marchall","Assets/comment_2.png", "A.K.A 4x4", 81),
    CarView("Tibault","Leclerc","Assets/comment_3.png", "GTI 278 cv STAGE 1 ", 56),
  ];

  //Constructor
  ListeMalades();

  @override
  Widget build(BuildContext context) {

    return ListView.builder (
      itemBuilder: (BuildContext context, int index) {
        return cars[index];
      },
      itemCount: cars.length,
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
     /*   Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context) {
            return BookCar(_image, _make, _model, _description, _quantity);
          },
        ));*/
      },
      child: Card (
        child: Row (
          children: [
            Image.asset(this._image, width: 120,),
            Container(
              child: Column(
                children: [
                  Text(this._make),
                  Text(this._model),
                  Text("Etat : Stable")
                ],
              ),
              margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
            )


          ],
        ),
      ),
    );
  }

}