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
          SizedBox(height: 20.0,),
          Text ("Reservation Form", style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),

          SizedBox(height: 20.0,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                width: halfMediaWidth,
                child: MyTextFormField(
                  hintText: 'ID no.',
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Enter Your ID no.';
                    }
                    return null;
                  },
                  onSaved: (String value){
                    model.firstName = value;
                  },
                ),
              ),

            ],
          ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
      Container(
      alignment: Alignment.topCenter,
        width: halfMediaWidth,
        child:MyTextFormField(
            hintText: 'Vehicle Type1',
            isEmail: true,
            validator: (String value){
              if(!validator.isEmail(value)){
                return 'Please enter a valid vehicle type';
              }
              return null;
            },
            onSaved: (String value){
              model.email = value;
            },
          ),
      ),
          Container(
            alignment: Alignment.topCenter,
            width: halfMediaWidth,
            child:MyTextFormField(
              hintText: 'Vehicle Type2',
              isEmail: true,
              validator: (String value){
                if(!validator.isEmail(value)){
                  return 'Please enter a valid vehicle type';
                }
                return null;
              },
              onSaved: (String value){
                model.email = value;
              },
            ),
          ),

        ],
      ),
          MyTextFormField(

            hintText: 'Time',
            isPassword: true,
            validator: (String value){
              _formKey.currentState!.save();
              return null;
            },
            onSaved: (String value){
              model.password =value;
            },
          ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
      Container(
      alignment: Alignment.topCenter,
        width: halfMediaWidth,
        child:
          MyTextFormField(
            hintText: 'Route1 start',
            isPassword: true,
            validator: (String value){

              return null;
            },  onSaved: (String? value) {
            // This optional block of code can be used to run
            // code when the user saves the form.
          },
          ),
      ),
          Container(
            alignment: Alignment.topCenter,
            width: halfMediaWidth,
            child:MyTextFormField(
              hintText: 'Route1 End',
              isEmail: true,
              validator: (String value){
                return null;
              },
              onSaved: (String value){
                model.email = value;
              },
            ),
          ),
        ],
      ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                width: halfMediaWidth,
                child:
                MyTextFormField(
                  hintText: 'Route2 start',
                  isPassword: true,
                  validator: (String value){

                    return null;
                  },  onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                width: halfMediaWidth,
                child:MyTextFormField(
                  hintText: 'Route2 End',
                  isEmail: true,
                  validator: (String value){
                    return null;
                  },
                  onSaved: (String value){
                    model.email = value;
                  },
                ),
              ),
            ],
          ),
          MyTextFormField(

            hintText: 'Purpose',
            isPassword: true,
            validator: (String value){
              _formKey.currentState!.save();
              return null;
            },
            onSaved: (String value){
              model.password =value;
            },
          ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
      Container(
      alignment: Alignment.topRight,
        width: halfMediaWidth,
        child:
          RaisedButton(
            color: Colors.green,
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
          ),
    ),
    Container(
    alignment: Alignment.topCenter,
    width: halfMediaWidth,
    child: RaisedButton(
        color: Colors.red,
        child: Text(
          'Cancel',
          style: TextStyle(
            color: Colors.white,

          ),
        ),
        onPressed:(){}
      )
    ),
        ],
      ),
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
