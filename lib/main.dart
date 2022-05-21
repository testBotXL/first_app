import 'package:first_app/fold/sign/sign_in_page.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(UiTest());
}

class UiTest extends StatelessWidget {
  const UiTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vehicle Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const SignInPage(),
    );
  }
}
