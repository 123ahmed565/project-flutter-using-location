import 'package:flutter/material.dart';
import 'package:flutterapp/Help&Support.dart';

import 'package:form_field_validator/form_field_validator.dart';
import 'Location.dart';
import 'Setting.dart';
class trusted_poeple extends StatefulWidget {
  @override
  _trusted_poepleState createState() => _trusted_poepleState();
}

class _trusted_poepleState extends State<trusted_poeple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: new Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
          color: new Color(0xff31364d),
        ),
        title: new Text('Mi Tracker',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'Cairo-SemiBold',
            )),
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor:new Color(0xff31364d),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Setting()));
            },
            padding: EdgeInsets.only(right: 15),
            color: Colors.white,
            iconSize: 35,
            splashColor: Colors.black,
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(70),
                ),
                Container(
                  child: Column(children: <Widget>[
                    Text('Enter your Contacts',style:TextStyle(color:Colors.black,fontSize: 25,letterSpacing: 2,backgroundColor:Colors.white10,),),
                  ],),
                ),
                Padding(
                  padding: EdgeInsets.all(50),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        TextField(
//                        controller: _textController,
                          decoration: InputDecoration(
                            helperText: 'Example (+020)11441330',
                            icon: Icon(
                              Icons.person_outline,
                              color: new Color(0xff31364d),
                            ),
                            labelText:'Enter Your First Number Please',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: new Color(0xff31364d))),
                            suffix: Container(
                              width: 5,
                              height: 5,
                            ),
                          ),
                          maxLength: 11,
                          enabled: true,
                          maxLengthEnforced: true,
                          keyboardType: TextInputType.number,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                        ),
                        TextField(
//                        controller: _textController,
                          decoration: InputDecoration(
                            helperText: 'Example (+020)11441330',
                            icon: Icon(
                              Icons.person_outline,
                              color: new Color(0xff31364d),
                            ),
                            labelText:'Enter Your Second Number Please',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: new Color(0xff31364d))),
                            suffix: Container(
                              width: 5,
                              height: 5,
                            ),
                          ),
                          maxLength: 11,
                          enabled: true,
                          maxLengthEnforced: true,
                          keyboardType: TextInputType.number,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                        ),
                        TextField(
//                        controller: _textController,
                          decoration: InputDecoration(
                            helperText: 'Example (+020)11441330',
                            icon: Icon(
                              Icons.person_outline,
                              color: new Color(0xff31364d),
                            ),
                          labelText:'Enter Your Third Number Please',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: new Color(0xff31364d))),
                            suffix: Container(
                              width: 5,
                              height: 5,
                            ),
                          ),
                          maxLength: 11,
                          enabled: true,
                          maxLengthEnforced: true,
                          keyboardType: TextInputType.number,
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        RaisedButton(
                          onPressed:
                          (){},
                          child: new Text('Submit',style: TextStyle(fontSize: 17,letterSpacing: 2,),),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(120.0)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 40.0),
                          textColor: Colors.white,
                          color: new Color(0xff31364d),
                          elevation: 10.0,
                          splashColor: Colors.white,
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        RaisedButton(
                          onPressed:
                              (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Location()));
                              },
                          child: new Text('Open your Location',style: TextStyle(fontSize: 17,letterSpacing: 2,),),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(120.0)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 40.0),
                          textColor: Colors.white,
                          color: new Color(0xff31364d),
                          elevation: 10.0,
                          splashColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
