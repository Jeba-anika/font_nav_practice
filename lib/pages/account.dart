import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../detailsScreen.dart';

class AccountScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "This field can't be empty";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'Please Enter ur email'),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "This field can't be empty";
                  } else if (val.length < 4) {
                    return "Enter a valid email";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: 'Enter ur password'),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "This field can't be empty";
                  } else if (val.length < 6) {
                    return "Password must be at least 6 digit";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (_) => DetailsScreen()));
                    }
                  },
                  child: Text('validate now'))
            ],
          ),
        ),
      ),
    ));
  }
}
