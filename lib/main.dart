import 'package:firebase_core/firebase_core.dart';
import 'package:first_app/fold/sign/sign_in_page.dart';
import 'package:flutter/material.dart';
Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
