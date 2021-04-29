import 'package:flutter/material.dart';
import 'package:tbb/screens/FormSubmitScreen.dart';
import 'package:tbb/screens/InvitationScreen.dart';
import 'package:tbb/screens/LoginScreen.dart';
import 'package:tbb/screens/Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

//    return Provider(
//      providers: [
//        ChangeNotifierProvider(create: (_) => OnlineDist()),
//        ChangeNotifierProvider(create: (_) => Basket()),
//        ChangeNotifierProvider(create: (_) => LoginData(),),
//        ChangeNotifierProvider(create: (_) => OrderDist(),)
//      ],
//      child:
return MaterialApp(
          title: 'Online Distribution',
          theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            accentColor: Colors.teal,
            primaryColor: Colors.white,
            //fontFamily: 'Anton',
          ),
          home: LoginScreen(),
          routes: {
            LoginScreen.routeName: (ctx) => LoginScreen(),
            FormSubmit.routeName: (ctx) => FormSubmit(),
            Screen.routeName: (ctx) => Screen(),
            Invitation.routeName:(ctx) =>Invitation(),

          }
      );

  }
}
