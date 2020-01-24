import 'package:flutter/material.dart';
import 'package:vendor5/pages/AlurRegistrasi.dart';
import 'package:vendor5/pages/Home.dart';
import 'package:vendor5/pages/ListProject.dart';
import 'package:vendor5/pages/Portofoliopage.dart';
import 'package:vendor5/pages/Reg3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
      ),
      home: Awalroute(),
    );
  }
}

class Awalroute extends StatefulWidget {
  @override
  _AwalrouteState createState() => _AwalrouteState();
}

class _AwalrouteState extends State<Awalroute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(), routes: {
      'AlurRegistrasi': (context) => AlurRegistrasi(),
      'ListProject': (context) => ListProject(),
      'Reg3': (context) => Reg3(),
      'Portofoliopage': (context) => Portofoliopage(),
    });
  }
}
