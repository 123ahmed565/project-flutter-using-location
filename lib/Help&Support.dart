import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';

class helpsupport extends StatefulWidget {
  @override
  _helpsupportState createState() => _helpsupportState();
}

class _helpsupportState extends State<helpsupport> {
  launcherUrl() async {
    const url = 'https://www.deeye.app/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: new Color(0xff31364d),
        title: Text('Help & Support'),
      ),
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(30),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                          'With over 2 million people going missing every year we are introducing Go-Found-me App.Your support will make Go-Found-me App a reality to help fight against child  trafficking not just in the Egypt but across the Globe.The missing persons report includes fields for the name of the person reported missing, their height, weight, time last seen, social media handles and more. Once the missing person report has been completed, it can be quickly sent to other law enforcement agencies .'
                      ,style: TextStyle(fontSize: 17,letterSpacing: 2,color: Colors.grey[700],),),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Container(
                  child: Column(
                    children: <Widget>[
                      RaisedButton(
                        onPressed:
                        launcherUrl,
                        child: new Text('For More Info',style: TextStyle(fontSize: 17,letterSpacing: 2,),),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
