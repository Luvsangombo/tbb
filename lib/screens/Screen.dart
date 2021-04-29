import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tbb/screens/FormSubmitScreen.dart';

class Screen extends StatefulWidget {
  static const routeName = '/screen2';
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        title: new Text("Хувь хүний талаар мэдээлэл" ),

      ),
      body: Column(
        children: [
//          Text("Хувь хүний талаар мэдээлэл ", textAlign:TextAlign.center,style: TextStyle(
//              fontWeight: FontWeight.bold,
//              fontSize: 20
//          ),),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new ListTile(
                  leading: const Icon(Icons.perm_identity),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Регистерийн дугаар ",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.person_add),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Овог",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.person),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Таны нэр",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.work),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Одоо ажиллаж буй байгууллага",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.assignment_ind),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Одоо ажиллаж буй албан тушаал",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.phone),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Утасны дугаар",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.email),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Имэйл хаяг",
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
                  "Дараагийн хэсгийг бөглөх",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                color: HexColor('#3c6a8c'),
                onPressed: (){  Navigator.of(context)
                    .pushNamed(FormSubmit.routeName);}
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
