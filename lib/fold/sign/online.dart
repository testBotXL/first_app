import 'package:first_app/common_widgets/custom_raised_button.dart';
import 'package:first_app/fold/sign/ofvlist.dart';
import 'package:first_app/fold/sign/ovlist.dart';
import 'package:first_app/fold/sign/search.dart';
import 'package:first_app/fold/sign/sign_in_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Online extends StatelessWidget {
  const Online({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(


        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text('Vehicle Tracker'), alignment: Alignment.center, )
          ],
        ),
        elevation: 15.0,
        leading: Image.asset('images/just.png'),
      ),

      body:
          Padding(
      padding: EdgeInsets.all(60.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    /*Text(
            'Track Vehicle',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w800,
            ),
          ),*/
    SizedBox(height: 15.0),
    SignInButton(
    text: 'Online Vehicle',
    textColor: Colors.black87,
    color: Colors.blueAccent,

    onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => OnVehicle()),);

    },

    ),
    SizedBox(height: 18.0),
    SignInButton(
    text: 'Offline Vehicle',
    textColor: Colors.black87,
    color: Colors.blueAccent,

    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => OffVehicle()),);
    },

    ),
    SizedBox(height: 18.0),
    SignInButton(
    text: 'General Tracking',
    textColor: Colors.black87,
    color: Colors.blueAccent,

    onPressed: () {},

    ),
    SizedBox(height: 18.0),
    SignInButton(
    text: 'Search Vehicle',
    textColor: Colors.black87,
    color: Colors.blueAccent,

    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Search()),);
    },

    ),


    ],
    ),
    )

    );
  }


}