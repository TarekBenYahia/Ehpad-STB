import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:url_launcher/url_launcher.dart';

class Tel extends StatefulWidget {
  @override
  _TelState createState() => _TelState();
}

class _TelState extends State<Tel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Téléphoner"),),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: FloatingActionButton.extended(
              onPressed: () => UrlLauncher.launch("tel://21213123123"),
              label: Text("Directeur"),
              icon: Icon( Icons.star),),
          ),
          SizedBox(height: 20,),
          Center(
            child: FloatingActionButton.extended(
              onPressed: () => UrlLauncher.launch("tel://21213123123"),
              label: Text("Responsable"),
              icon: Icon( Icons.star),),
          ),
          SizedBox(height: 20,),
          Center(
            child: FloatingActionButton.extended(
              onPressed: () => UrlLauncher.launch("tel://21213123123"),
              label: Text("Infirmier"),
              icon: Icon( Icons.star),),
          ),

        ],
      ),
    );
  }
}
