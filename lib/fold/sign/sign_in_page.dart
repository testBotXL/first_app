import 'package:first_app/common_widgets/custom_raised_button.dart';
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
      body: _buildContent(),
      backgroundColor: Colors.grey[400],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(60.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Track Vehicle',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 15.0),
          CustomRaisedButton(
            child: Text(
              'Track Vehicle',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15.0,
              ),
            ),
            color: Colors.blueAccent,
            borderRadius: 6.0,
            onPressed: () {},

          ),

        ],
      ),
    );
  }
}
