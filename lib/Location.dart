import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

class Location extends StatefulWidget {

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  var locationMessage = '';
  String latitude;
  String longitude;

  // function for getting the current location
  // but before that you need to add this permission!
  void getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var lat = position.latitude;
    var long = position.longitude;

    // passing this to latitude and longitude strings
    latitude = "$lat";
    longitude = "$long";

    setState(() {
      locationMessage = "Latitude: $lat and Longitude: $long";
    });
  }

  // function for opening it in google maps

  void googleMap() async {
    String googleUrl =
        "https://www.google.com/maps/search/?api=1&query=$latitude,$longitude";

    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else
      throw ("Couldn't open google maps");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User location application',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
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
          title: new Text('Location For User',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: 'Cairo-SemiBold',
              )),
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor:new Color(0xff31364d),
          //leading: new Icon(Icons.keyboard_backspace,color: Colors.black,),
          actions: <Widget>[
            // IconButton(
            //   icon: new Icon(Icons.settings),
            //   onPressed: () {
            //     Navigator.push(context, MaterialPageRoute(builder:(context)=>Location()));
            //   },
            //   padding: EdgeInsets.only(right: 15),
            //   color: Colors.white,
            //   iconSize: 35,
            //   splashColor: Colors.black,
            // ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 45.0,
                color: Colors.black,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Get User Location",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                locationMessage,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 05.0,
              ),

              // button for taking the location
              FlatButton(
                color: new Color(0xff31364d),
                onPressed: () {
                  getCurrentLocation();
                },
                child: Text("Get User Location",style: TextStyle( color: Colors.white)),
              ),

              FlatButton(
                color:  new Color(0xff31364d),
                onPressed: () {
                  googleMap();
                },
                child: Text("Open GoogleMap",style: TextStyle( color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
