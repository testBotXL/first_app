import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(8.0),
                child: Text('Vehicle Tracker'))
          ],
        ),
        elevation: 15.0,
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.black,
              child: SizedBox(
                height: 75.0,
              ),
            ),
            Container(
              color: Colors.red,
              child: SizedBox(
                height: 75.0,
              ),
            ),
            Container(
              color: Colors.yellow,
              child: SizedBox(
                height: 75.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
