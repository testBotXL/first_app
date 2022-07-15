import 'package:flutter/foundation.dart';
import 'package:validators/validators.dart' as validator;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'mdlreserve.dart';
import 'result.dart';


class Reservation extends StatelessWidget {
  const Reservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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

        body:  TestForm(),


      ),

    );
  }
}
class TestForm extends StatefulWidget {
  const TestForm({Key? key}) : super(key: key);

  @override
  State<TestForm> createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  final _formKey =GlobalKey<FormState>();
  Model model = Model(lastName: '', firstName: '', password: '', email: '');

  @override
  Widget build(BuildContext context) {

    final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                width: halfMediaWidth,
                child: MyTextFormField(
                  hintText: 'First Name',
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Enter Your First Name';
                    }
                    return null;
                  },
                  onSaved: (String value){
                    model.firstName = value;
                  },
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                width: halfMediaWidth,
                child: MyTextFormField(
                  hintText: 'Last Name',
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Enter Your Last Name';
                    }
                    return null;
                  },
                  onSaved: (String value){
                    model.lastName = value;
                  },
                ),
              ),
            ],
          ),
          MyTextFormField(
            hintText: 'Email',
            isEmail: true,
            validator: (String value){
              if(!validator.isEmail(value)){
                return 'Please enter a valid email';
              }
              return null;
            },
            onSaved: (String value){
              model.email = value;
            },
          ),
          MyTextFormField(
            hintText: 'Password',
            isPassword: true,
            validator: (String value){
              if(value.length<7){
                return 'password too short';
              }
              _formKey.currentState!.save();
              return null;
            },
            onSaved: (String value){
              model.password =value;
            },
          ),
          MyTextFormField(
            hintText: 'Confirm Password',
            isPassword: true,
            validator: (String value){
              if(value.length<7){
                return 'password too short';
              }
              else if (model.password != null && value != model.password) {
                return 'password not matched';
              }
              return null;
            },  onSaved: (String? value) {
            // This optional block of code can be used to run
            // code when the user saves the form.
          },
          ),
          RaisedButton(
            color: Colors.blueAccent,
            child: Text(
              'Confirm',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed:(){
              if(_formKey.currentState!.validate()){

                _formKey.currentState?.save();


                Navigator.push(context, MaterialPageRoute(builder: (context) => Result(model: this.model)));
              }
            },
          )
        ],
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Model>('model', model));
    properties.add(DiagnosticsProperty<Model>('model', model));
  }
}
class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;


  MyTextFormField({
    required this.hintText,
    required this.validator,
    required this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(7.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true : false,
        
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );


  }
}
