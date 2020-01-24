import 'package:flutter/material.dart';
import 'package:vendor5/util/Clipath.dart';
import 'package:vendor5/util/constants.dart';

class Portofoliopage extends StatefulWidget {
  @override
  _PortofoliopageState createState() => _PortofoliopageState();
}

class _PortofoliopageState extends State<Portofoliopage> {
  Widget _buildTextFieldInstansi() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Instansi',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            // controller: _controllervendor_instansi,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Masukkan nama instansi',
              hintStyle: kHintTextStyle,
              /*  errorText: _isFieldvendor_instansiValid == null ||
                      _isFieldvendor_instansiValid
                  ? null
                  : "Full name is required", */
            ),
            /*   onChanged: (value) {
              bool isFieldValid = value.trim().isNotEmpty;
              if (isFieldValid != _isFieldvendor_instansiValid) {
                setState(() => _isFieldvendor_instansiValid = isFieldValid);
              }
            }, */
          ),
        ),
      ],
    );
  }

  Widget _builduploadporto() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Files',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("data"),
              FlatButton(
                onPressed: () {},
                child: Icon(
                  Icons.file_upload,
                  color: Colors.white,
                  size: 40.0,
                ),
                shape: CircleBorder(),
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Clipath2(),
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [Colors.lightBlue, Colors.blue[700]], radius: 1),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 100.0),
                  child: Text(
                    'Selamat datang\nVendor',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 30.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 160.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 8.0, bottom: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0.0, 3.0),
                            blurRadius: 15.0)
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          _buildTextFieldInstansi(),
                          SizedBox(height: 20.0),
                          _builduploadporto(),
                          _buildTextFieldInstansi(),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
