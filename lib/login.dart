import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stb_hackaton/acceuil.dart';
import 'package:stb_hackaton/acceuilInfirmier.dart';
import 'package:url_launcher/url_launcher.dart';
//10.0.2.2

class Login extends StatefulWidget{
  Login();

  @override
  _LoginState createState() => _LoginState();

}

class _LoginState extends State <Login> {
  //var
  String email,password;
  final GlobalKey<FormState> _globalKey = new GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _globalKey,
          child: ListView(
            children: [
              Image.asset("Assets/logo.png"),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"
                ),
                // ignore: missing_return, missing_return
                validator: (value){
                  if (value.isEmpty)

                    return "Champs email vide";
                },
                onSaved: (newValue){
                  email = newValue;
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder() , labelText: "Mot de Passe"
                ),
                // ignore: missing_return
                validator: (value){
                  if (value.isEmpty)
                    return "Le champs Mot de Passe vide";
                },
                onSaved: (newValue){
                  password = newValue;
                },
              ),
              Padding(padding: EdgeInsets.fromLTRB(275, 0, 0, 0),
                child:  InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "/Reset");
                  },
                  child: Text("Mot de passe oublié?",style: TextStyle(
                      decoration: TextDecoration.underline
                  ),) ,
                ),),


              SizedBox(
                height: 15,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(child: Text("Se connecter"),
                    color: Colors.blue[800],
                    onPressed:(){
                      if(!_globalKey.currentState.validate())
                        return;
                      _globalKey.currentState.save();
                      if(email=="client"&& password=="client")
                      {
                        Navigator.push(context,MaterialPageRoute(
                            builder: (BuildContext context){
                              return Acceuil();
                            }
                        )) ;
                      }
                      else if(email=="inf"&& password=="inf")
                      {
                        Navigator.push(context,MaterialPageRoute(
                            builder: (BuildContext context){
                              return AcceuilInfirmier();
                            }
                        )) ;
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),



                ],
              )
            ],
          )
      ),
    );
  }

}
