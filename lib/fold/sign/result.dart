import 'package:flutter/material.dart';
import 'mdlreserve.dart';

class Result extends StatelessWidget {
  Model model;

  Result({required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(


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
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              model.firstName,
              style: TextStyle(fontSize: 22),
            ),Text(
              model.lastName,
              style: TextStyle(fontSize: 22),
            ),Text(
              model.email,
              style: TextStyle(fontSize: 22),
            ),Text(
              model.password,
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
