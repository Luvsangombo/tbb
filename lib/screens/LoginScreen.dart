import 'dart:async';
import 'package:hexcolor/hexcolor.dart';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tbb/screens/FormSubmitScreen.dart';
import 'package:tbb/screens/Screen.dart';


class LoginScreen extends StatefulWidget {

  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ignore: close_sinks
  StreamController<ErrorAnimationType> errorController = StreamController<ErrorAnimationType>();
  String currentText = "";
  bool hasError = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Урилгын код оруулах"),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: PinCodeTextField(
                length: 6,
                obscureText: false,
                pinTheme: PinTheme(
                  inactiveColor: Colors.grey,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 60,
                  fieldWidth: 60,
                  activeFillColor: hasError ? Colors.orange : Colors.white,
                ),
                obscuringCharacter: '*',
//                backgroundColor: Colors.blue.shade50,
                keyboardType: TextInputType.number,
//                animationType: AnimationType.fade,
//                animationDuration: Duration(milliseconds: 300),
//                errorAnimationController: errorController, // Pass it here
                onChanged: (value) {
                  setState(() {
                    currentText = value;
                  });
                },
              ),
            ),
            Container(
              width: 280,
              child: RaisedButton(
                padding: EdgeInsets.all(12),
//                onPressed: _login,
                child: Text(
                  "Facebook-ээр нэвтрэх",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                color: HexColor('#3c6a8c'),
                onPressed: (){  Navigator.of(context)
                    .pushNamed(Screen.routeName);}
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xFFF2F3F7)),
            ),          ],
        ),
      ),
    );
  }
}
