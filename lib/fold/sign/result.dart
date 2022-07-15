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
              model.IDno,
              style: TextStyle(fontSize: 22),
            ),Text(
              model.vehicletype1,
              style: TextStyle(fontSize: 22),
            ),Text(
              model.vehicletype2,
              style: TextStyle(fontSize: 22),
            ),Text(
              model.time,
              style: TextStyle(fontSize: 22),
            ),Text(
              model.route1,
              style: TextStyle(fontSize: 22),
            ),Text(
              model.route2,
              style: TextStyle(fontSize: 22),
            ),Text(
              model.purpose,
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
