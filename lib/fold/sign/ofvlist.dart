import 'package:first_app/common_widgets/custom_raised_button.dart';
import 'package:first_app/fold/sign/sign_in_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'online.dart';

class OffVehicle extends StatelessWidget {
  const OffVehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text('Vehicle Tracker'),
                alignment: Alignment.center,
              )
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
              Text(
                'Offline Vehicle',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 60.0),
              SignInButton(
                text: 'Kopotakkho',
                textColor: Colors.black87,
                color: Colors.red,
                onPressed: () {
                },
              ),
              SizedBox(height: 18.0),
              SignInButton(
                text: 'Chondromollika',
                textColor: Colors.black87,
                color: Colors.red,
                onPressed: () {},
              ),

              SizedBox(height: 18.0),
              SignInButton(
                text: 'Shurjomukhi',
                textColor: Colors.black87,
                color: Colors.red,
                onPressed: () {},
              ),
              SizedBox(height: 18.0),
              SignInButton(
                text: 'Chameli',
                textColor: Colors.black87,
                color: Colors.red,
                onPressed: () {},
              ),
              SizedBox(height: 18.0),
              SignInButton(
                text: 'Joba',
                textColor: Colors.black87,
                color: Colors.red,
                onPressed: () {},
              ),
            ],
          ),
        )


    );
  }


}
