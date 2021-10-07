import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:stb_hackaton/chat.dart';
import 'package:stb_hackaton/urgence.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'Alertes.dart';
import 'ListeMalades.dart';
import 'agenda.dart';
import 'call.dart';
import 'divertissement.dart';
import 'login.dart';

class AcceuilInfirmier extends StatefulWidget {
  @override
  _AcceuilInfirmierState createState() => _AcceuilInfirmierState();
}

class _AcceuilInfirmierState extends State<AcceuilInfirmier> {
  bool isSwitched = false;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  List<Widget> _widgetOptions = <Widget>[
    ListeMalades(),Alertes(),TableBasicsExample(),Chatbot()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Scaffold(
            appBar: AppBar(
              title:Text( "Choisissez"),
            ),
            body: Column(children: [

              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.build, color: Colors.green, size: 25,), onPressed: () {  },
                ),
                title: Row(
                  children: [
                    Text("FR"),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched=value;
                        });
                      },
                      inactiveTrackColor: Colors.yellow,
                      activeColor: Colors.orangeAccent,
                    ),
                    Text("EN")
                  ],
                ),
              ),

              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.power_settings_new, color: Colors.green, size: 30,),
                ),
                title: Text('Déconnexion'),
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Login()),
                  );
                },
              ),

            ],)

        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20,
        title: const Text('Acceuil Infirmier'),
      ),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.redAccent[300],
              hoverColor: Colors.redAccent,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[300],
              color: Colors.black,
              tabs: [
                GButton(
                  icon: LineIcons.list,
                  text: 'Patients',
                ),
                GButton(
                  icon: Icons.add_alert,
                  text: 'Alertes',
                ),
                GButton(
                  icon: LineIcons.calendar,
                  text: 'Agenda',
                ),
                GButton(
                  icon: Icons.chat,
                  text: 'Chat',
                ),

              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
