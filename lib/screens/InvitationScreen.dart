import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class Invitation extends StatefulWidget {
  static const routeName = '/invite';
  @override
  _InvitationState createState() => _InvitationState();
}

class _InvitationState extends State<Invitation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("ТТБ"),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.save), onPressed: () {})
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(child: CircleAvatar(
            radius: 60,
          )),
          Text("Овог нэр " ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          Text('Элссэн огноо ',style: TextStyle(fontSize: 15,)),
          SizedBox(height: 200,),
          Container(
            width: 280,
            child: RaisedButton(
                padding: EdgeInsets.all(12),
//                onPressed: _login,
                child: Text(
                  "Гишүүн урих",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                color: HexColor('#3c6a8c'),
//                    onPressed: (){  Navigator.of(context)
//                        .pushNamed(Screen.routeName);}
            ),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFFF2F3F7)),
          ),
          Container(
            width: 280,
            child: RaisedButton(
                padding: EdgeInsets.all(12),
//                onPressed: _login,
                child: Text(
                  "Гишүүний мэдээлэл бөглөх ",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                color: HexColor('#3c6a8c'),
//                    onPressed: (){  Navigator.of(context)
//                        .pushNamed(Screen.routeName);}
            ),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFFF2F3F7)),
          )


        ],
      ),
    );
  }
}
