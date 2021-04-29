import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tbb/screens/InvitationScreen.dart';
import 'package:tbb/screens/screen.dart';

class FormSubmit extends StatefulWidget {
  static const routeName = '/form';
  @override
  _FormSubmitState createState() => _FormSubmitState();
}

class _FormSubmitState extends State<FormSubmit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        title: new Text("МАН-д ажиллаж байсан харьяалах байгууллагын мэдээлэл", textAlign:TextAlign.center,style:TextStyle(
            fontSize: 12
        )),
      ),
      body: Column(
        children: [
//          Text("МАН-д ажиллаж байсан харьяалах байгууллагын мэдээлэл", textAlign:TextAlign.center,
//            style: TextStyle(
//            fontWeight: FontWeight.bold,
//            fontSize: 20
//          ),),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new ListTile(
                  leading: const Icon(Icons.work),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Ажилласан байгууллагын нэр",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.branding_watermark),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Газар, хэлтэс",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Албан тушаал",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.date_range),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Ажилд орсон он, сар",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.date_range),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Ажлаас гарсан он, сар",
                    ),
                  ),
                ),

              ],
            ),
          ),
          Container(
            width: 280,
            child: RaisedButton(
                padding: EdgeInsets.all(12),
//                onPressed: _login,
                child: Text(
                  "Хадгалах",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                color: HexColor('#3c6a8c'),
                onPressed: (){  Navigator.of(context)
                    .pushNamed( Invitation.routeName);}
            ),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFFF2F3F7)),
          ),
        ],
      ),
    );
  }
}
