import 'package:first_app/common_widgets/custom_raised_button.dart';
import 'package:first_app/fold/sign/sign_in_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnVehicle extends StatelessWidget {
  const OnVehicle({Key? key}) : super(key: key);

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

      body: _buildOnline(),
      backgroundColor: Colors.grey[400],
    );
  }

  Widget _buildOnline() {
    return Padding(
      padding: EdgeInsets.all(60.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Online Vehicle',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height:60.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SignInButton(
            text: 'Kopotakkho',
            textColor: Colors.black87,
            color: Colors.green,
            onPressed: () {
            },
          ),
          SignInButton(
            text: 'Track',
            textColor: Colors.black87,
            color: Colors.red,
            onPressed: () {
            },
          ),
        ],
      ),

          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SignInButton(
                text: 'Chondhormollika',
                textColor: Colors.black87,
                color: Colors.green,
                onPressed: () {
                },
              ),
              SignInButton(
                text: 'Track',
                textColor: Colors.black87,
                color: Colors.red,
                onPressed: () {
                },
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SignInButton(
                text: 'Shurjomukhi',
                textColor: Colors.black87,
                color: Colors.green,
                onPressed: () {
                },
              ),
              SignInButton(
                text: 'Track',
                textColor: Colors.black87,
                color: Colors.red,
                onPressed: () {
                },
              ),
            ],
          ),
          SizedBox(height: 20.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SignInButton(
            text: 'Chameli',
            textColor: Colors.black87,
            color: Colors.green,
            onPressed: () {
            },
          ),
          SignInButton(
            text: 'Track',
            textColor: Colors.black87,
            color: Colors.red,
            onPressed: () {
            },
          ),
        ],
      ),
      SizedBox(height: 18.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SignInButton(
            text: 'Joba',
            textColor: Colors.black87,
            color: Colors.green,
            onPressed: () {
            },
          ),
          SignInButton(
            text: 'Track',
            textColor: Colors.black87,
            color: Colors.red,
            onPressed: () {
            },
          ),
        ],
      ),


        ],
      ),
    );
  }
}