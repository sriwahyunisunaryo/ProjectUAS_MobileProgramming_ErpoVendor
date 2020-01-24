import 'dart:io';

import 'package:flutter/material.dart';

class AlurRegistrasi extends StatefulWidget {
  @override
  _AlurRegistrasiState createState() => _AlurRegistrasiState();
}

class _AlurRegistrasiState extends State<AlurRegistrasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Alur Registrasi",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/home1.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                /*  Text(
                  "Alur\nRegistrasi".toUpperCase(),
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
                ), */
                SizedBox(
                  height: 16.0,
                ),
                Divider(),
                SizedBox(
                  height: 20.0,
                ),
                _buildStep(
                    leadingTitle: "01",
                    title: "Step".toUpperCase(),
                    content:
                        "Anda harus mengisi Formulir Pendaftaran Vendor pada aplikasi ini."),
                SizedBox(
                  height: 30.0,
                ),
                _buildStep(
                    leadingTitle: "02",
                    title: "Step".toUpperCase(),
                    content:
                        "Data yang dimasukkan harus benar dan bukan data manipulasi."),
                SizedBox(
                  height: 30.0,
                ),
                _buildStep(
                    leadingTitle: "03",
                    title: "Step".toUpperCase(),
                    content:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lacinia, odio ut placerat finibus, ipsum risus consectetur ligula, non mattis mi neque ac mi. Vivamus quis tellus sed erat eleifend pharetra ac non diam. Integer vitae ipsum congue, vestibulum eros quis, interdum tellus. Nunc vel dictum elit. Curabitur suscipit scelerisque."),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildStep({String leadingTitle, String title, String content}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        color: Color.fromRGBO(1, 186, 239, 100),
        child: Container(
          padding: EdgeInsets.all(5.0),
          child: Text(leadingTitle,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
        ),
      ),
      SizedBox(
        width: 16.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            SizedBox(
              height: 10.0,
            ),
            Text(content),
          ],
        ),
      )
    ],
  );
}
