import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class Urgence extends StatefulWidget {
  @override
  _UrgenceState createState() => _UrgenceState();
}

class _UrgenceState extends State<Urgence> {
  bool isSwitched = false;
  @override
Widget build(BuildContext context) {
  return Scaffold(


    body: Container(
      child: ListView(
          children: <Widget>[
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 120,),
                Text("Bonjour,",style: TextStyle(fontSize: 20,fontFamily: 'RobotoMono'),),
                Text("  Christine",style: TextStyle(fontSize: 23,fontFamily: 'RobotoMono',fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.green),),
                SizedBox(width: 30,),
                CircleAvatar(
                  backgroundImage: AssetImage("Assets/client_1.png"),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Center(
              child: Text("Aujourd'hui, ${DateFormat("Hm").format(DateTime.now())}", style: TextStyle(
                  fontSize: 20
              ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(110, 10, 0, 20),
              child: new LinearPercentIndicator(
                width: 190.0,
                lineHeight: 18.0,
                percent: 0.8,
                center: Text(
                  "80.0%",
                  style: new TextStyle(fontSize: 12.0),
                ),
                trailing: Icon(Icons.mood),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: Colors.blueAccent,
              ),
            ),
            Row(

              children: [
                SizedBox(width: 50,),
                new CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 10.0,
                  percent: 0.8,
                  footer: new Text("Activité cardiaque"),
                  center: new Icon(
                    LineIcons.heart,
                    size: 50.0,
                    color: Colors.blue,
                  ),
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blueAccent,
                ),

                new CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 10.0,
                  percent: 0.6,
                  footer: new Text("6 hr 10 min "),
                  center: new Icon(
                    LineIcons.moon,
                    size: 50.0,
                    color: Colors.blue,
                  ),
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blueAccent,
                ),
                SizedBox(width: 7,),
                new CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 10.0,
                  percent: 0.8,
                  footer: new Text("Hydratation"),
                  center: new Icon(
                    Icons.local_drink,
                    size: 50.0,
                    color: Colors.blue,
                  ),
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 40,),


            Row(children: [
              SizedBox(width: 60,),
              new CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 13.0,
                animation: true,
                percent: 0.7,
                center: new Text(
                  "70.0%",
                  style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                footer: new Text(
                  "Fréquence cardiaque",
                  style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.blueAccent,
              ),
              new CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 13.0,
                animation: true,
                percent: 0.4,
                center: new Text(
                  "358",
                  style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                footer: new Text(
                  "Pas",
                  style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.blueAccent,
              ),
            ],),
            SizedBox(height: 30,),
            Center(

              child: Container(
                width: 280,
                height: 70,
                child: ElevatedButton(
                    onPressed:(){},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed))
                            return Colors.redAccent;
                          return Colors.red; // Use the component's default.
                        },
                      ),
                    ),
                    child: Text("Urgence")),

              ),
            ),
            SizedBox(height: 20,),
            Center(

              child: Container(
                width: 130,
                height: 40,
                child: ElevatedButton(
                    onPressed:(){},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed))
                            return Colors.orangeAccent;
                          return Colors.orange; // Use the component's default.
                        },
                      ),
                    ),
                    child: Text("Besoin d'aide?")),

              ),
            ),

          ]),
    ),
  );
}
}
