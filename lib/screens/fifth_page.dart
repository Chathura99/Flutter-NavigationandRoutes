// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FifthPage extends StatefulWidget {
  FifthPage({Key? key}) : super(key: key);

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  //identify form and form state(current data)
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String _name;

  Widget _buildField(name) {
    // name var for reusable
    return TextFormField(
        maxLength: 10,
        decoration: InputDecoration(
          hintText: name,
          labelText: name,
          ),
        maxLines: 1,
        //for validate text field
        validator: (text) {
          //automatic come field value to this place, we can use it and validate
          // if (text!.isEmpty) {
            //validate property retun error name
            // return 'please enter your ${name}!';
            return HelperValidator.nameValidate(text!);
          // }
          // return null;
        },
        //save all form data to _name variable(optional-onSaved())
        onSaved: (text) {
          _name = text!;
        }
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fifth Page - Form validate'),
      ),
      body: SingleChildScrollView(
        child: Form(
          //identify form and form state(current data)
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                _buildField("Name"),
                _buildField("Email"),
                _buildField("Mobile No"),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: RaisedButton(
                    child: Text('Register'),
                    onPressed: () {
                      //validate by get field data using key
                      if (_formKey.currentState!.validate()) {
                        // if valid then called onSaved
                        _formKey.currentState!.save();
                        print(_name);
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//validate from other class
class HelperValidator {
  static String? nameValidate(String value) {
    if (value.isEmpty) {
      return "can't be empty";
    }
    if (value.length < 2) {
      return "must be at least 2 characters long";
    }
    if (value.length > 50) {
      return "must be less than 50 characters long";
    }
    return null;
  }
}