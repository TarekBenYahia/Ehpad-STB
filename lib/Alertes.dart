import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Alertes extends StatelessWidget{
  //var
  List<CarView> cars = [
    CarView("Christine"," Dupont","Assets/client_1.png","Voir un The king's Crisis à 18h30 ", 33),
    CarView("Alexandre"," Hoffa","Assets/comment_1.png", "Aller boire un café à la Medina", 128),
    CarView("Clement","Marchall","Assets/comment_2.png", "Visiter un lieu historique", 81),
    CarView("Tibault","Leclerc","Assets/comment_3.png", "Dormir", 56),
  ];

  //Constructor
  Alertes();

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
        showDialog(context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: Text(("Informations")),
              content: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("Monsieur "+this._make+" "+this._model),
                    Text("veut "+ this._description),
                    SizedBox(height: 20,),

                  ]
              ),
              actions: [
                CupertinoDialogAction(child: Text("Annuler"),
                  onPressed: () {
                    Navigator.pop(context);
                  },)
              ],

            );
          },
        );
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