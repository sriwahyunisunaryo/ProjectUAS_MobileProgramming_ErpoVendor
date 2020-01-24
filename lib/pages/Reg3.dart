import 'package:flutter/material.dart';
import 'package:vendor5/api/api_service.dart';
import 'package:vendor5/models/vendors.dart';
import 'package:vendor5/util/Clipath.dart';
import 'package:vendor5/util/constants.dart';

final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class Reg3 extends StatefulWidget {
  Vendor vendor;

  Reg3({this.vendor});

  @override
  _Reg3State createState() => _Reg3State();
}

class _Reg3State extends State<Reg3> {
  bool _isLoading = false;
  ApiService _apiService = ApiService();

  bool _isFieldvendor_instansiValid;
  bool _isFieldvendor_pimpinanValid;
  bool _isFieldvendor_teleponValid;
  bool _isFieldvendor_emailValid;
  bool _isFieldvendor_bidangValid;
  bool _isFieldvendor_npwpValid;
  bool _isFieldvendor_websiteValid;
  bool _isFieldvendor_alamatValid;
  bool _isFieldvendor_tentangValid;

  TextEditingController _controllervendor_instansi = TextEditingController();
  TextEditingController _controllervendor_pimpinan = TextEditingController();
  TextEditingController _controllervendor_telepon = TextEditingController();
  TextEditingController _controllervendor_email = TextEditingController();
  TextEditingController _controllervendor_bidang = TextEditingController();
  TextEditingController _controllervendor_npwp = TextEditingController();
  TextEditingController _controllervendor_website = TextEditingController();
  TextEditingController _controllervendor_alamat = TextEditingController();
  TextEditingController _controllervendor_tentang = TextEditingController();

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
            controller: _controllervendor_instansi,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(5.0),
              /*  prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ), */
              hintText: 'Masukkan nama instansi',
              hintStyle: kHintTextStyle,
              errorText: _isFieldvendor_instansiValid == null ||
                      _isFieldvendor_instansiValid
                  ? null
                  : "Full name is required",
            ),
            onChanged: (value) {
              bool isFieldValid = value.trim().isNotEmpty;
              if (isFieldValid != _isFieldvendor_instansiValid) {
                setState(() => _isFieldvendor_instansiValid = isFieldValid);
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTextFieldPimpinan() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Pimpinan',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            controller: _controllervendor_pimpinan,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(5.0),
              /* prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ), */
              hintText: 'Masukkan nama Pimpinan',
              hintStyle: kHintTextStyle,
              errorText: _isFieldvendor_pimpinanValid == null ||
                      _isFieldvendor_pimpinanValid
                  ? null
                  : "Full name is required",
            ),
            onChanged: (value) {
              bool isFieldValid = value.trim().isNotEmpty;
              if (isFieldValid != _isFieldvendor_pimpinanValid) {
                setState(() => _isFieldvendor_pimpinanValid = isFieldValid);
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTextFieldTelepon() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Telepon',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            controller: _controllervendor_telepon,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(5.0),
              /* prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ), */
              hintText: 'Masukkan nomor telepon',
              hintStyle: kHintTextStyle,
            ),
            onChanged: (value) {
              bool isFieldValid = value.trim().isNotEmpty;
              if (isFieldValid != _isFieldvendor_teleponValid) {
                setState(() => _isFieldvendor_teleponValid = isFieldValid);
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTextFieldEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            controller: _controllervendor_email,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(5.0),
              /* prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ), */
              hintText: 'Masukkan Email',
              hintStyle: kHintTextStyle,
            ),
            onChanged: (value) {
              bool isFieldValid = value.trim().isNotEmpty;
              if (isFieldValid != _isFieldvendor_emailValid) {
                setState(() => _isFieldvendor_emailValid = isFieldValid);
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTextFieldBidang() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Bidang',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            controller: _controllervendor_bidang,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(5.0),
              /* prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ), */
              hintText: 'BUMS/BUMN',
              hintStyle: kHintTextStyle,
            ),
            onChanged: (value) {
              bool isFieldValid = value.trim().isNotEmpty;
              if (isFieldValid != _isFieldvendor_bidangValid) {
                setState(() => _isFieldvendor_bidangValid = isFieldValid);
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTextFieldNpwp() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Npwp',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            controller: _controllervendor_npwp,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(5.0),
              /* prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ), */
              hintText: 'Masukkan Npwp',
              hintStyle: kHintTextStyle,
            ),
            onChanged: (value) {
              bool isFieldValid = value.trim().isNotEmpty;
              if (isFieldValid != _isFieldvendor_npwpValid) {
                setState(() => _isFieldvendor_npwpValid = isFieldValid);
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTextFieldWebsite() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Website',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            controller: _controllervendor_website,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(5.0),
              /* prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ), */
              hintText: 'Masukkan Website',
              hintStyle: kHintTextStyle,
            ),
            onChanged: (value) {
              bool isFieldValid = value.trim().isNotEmpty;
              if (isFieldValid != _isFieldvendor_websiteValid) {
                setState(() => _isFieldvendor_websiteValid = isFieldValid);
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTextFieldAlamat() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Alamat',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            controller: _controllervendor_alamat,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(5.0),
              /* prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ), */
              hintText: 'Masukkan alamat',
              hintStyle: kHintTextStyle,
            ),
            onChanged: (value) {
              bool isFieldValid = value.trim().isNotEmpty;
              if (isFieldValid != _isFieldvendor_alamatValid) {
                setState(() => _isFieldvendor_alamatValid = isFieldValid);
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTextFieldTentang() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Tentang',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            controller: _controllervendor_tentang,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(5.0),
              /* prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ), */
              hintText: 'Masukkan tentang',
              hintStyle: kHintTextStyle,
            ),
            onChanged: (value) {
              bool isFieldValid = value.trim().isNotEmpty;
              if (isFieldValid != _isFieldvendor_tentangValid) {
                setState(() => _isFieldvendor_tentangValid = isFieldValid);
              }
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      body: SingleChildScrollView(
        child: Stack(
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
                            _buildTextFieldPimpinan(),
                            SizedBox(height: 20.0),
                            _buildTextFieldTelepon(),
                            SizedBox(height: 20.0),
                            _buildTextFieldEmail(),
                            SizedBox(height: 20.0),
                            _buildTextFieldBidang(),
                            SizedBox(height: 20.0),
                            _buildTextFieldNpwp(),
                            SizedBox(height: 20.0),
                            _buildTextFieldWebsite(),
                            SizedBox(height: 20.0),
                            _buildTextFieldAlamat(),
                            SizedBox(height: 20.0),
                            _buildTextFieldTentang(),
                            SizedBox(height: 20.0),
                            RaisedButton(
                              onPressed: () {
                                if (_isFieldvendor_instansiValid == null ||
                                    _isFieldvendor_pimpinanValid == null ||
                                    _isFieldvendor_teleponValid == null ||
                                    _isFieldvendor_emailValid == null ||
                                    _isFieldvendor_bidangValid == null ||
                                    _isFieldvendor_npwpValid == null ||
                                    _isFieldvendor_websiteValid == null ||
                                    _isFieldvendor_alamatValid == null ||
                                    _isFieldvendor_tentangValid == null ||
                                    !_isFieldvendor_instansiValid ||
                                    !_isFieldvendor_pimpinanValid ||
                                    !_isFieldvendor_teleponValid ||
                                    !_isFieldvendor_emailValid ||
                                    !_isFieldvendor_bidangValid ||
                                    !_isFieldvendor_npwpValid ||
                                    !_isFieldvendor_websiteValid ||
                                    !_isFieldvendor_alamatValid ||
                                    !_isFieldvendor_tentangValid) {
                                  _scaffoldState.currentState.showSnackBar(
                                    SnackBar(
                                      content: Text("Please fill all field"),
                                    ),
                                  );
                                  return;
                                }
                                setState(() => _isLoading = true);
                                String vendor_instansi =
                                    _controllervendor_instansi.text.toString();
                                String vendor_pimpinan =
                                    _controllervendor_pimpinan.text.toString();
                                String vendor_telepon =
                                    _controllervendor_telepon.text.toString();
                                String vendor_email =
                                    _controllervendor_email.text.toString();
                                String vendor_bidang =
                                    _controllervendor_bidang.text.toString();
                                String vendor_npwp =
                                    _controllervendor_npwp.text.toString();
                                String vendor_website =
                                    _controllervendor_website.text.toString();
                                String vendor_alamat =
                                    _controllervendor_alamat.text.toString();
                                String vendor_tentang =
                                    _controllervendor_tentang.text.toString();

                                Vendor vendor = Vendor(
                                    vendor_instansi: vendor_instansi,
                                    vendor_pimpinan: vendor_pimpinan,
                                    vendor_telepon: vendor_telepon,
                                    vendor_email: vendor_email,
                                    vendor_bidang: vendor_bidang,
                                    vendor_npwp: vendor_npwp,
                                    vendor_website: vendor_website,
                                    vendor_alamat: vendor_alamat,
                                    vendor_tentang: vendor_tentang);

                                _apiService
                                    .createVendor(vendor)
                                    .then((isSuccess) {
                                  setState(() => _isLoading = false);
                                  if (isSuccess) {
                                    Navigator.pop(
                                        _scaffoldState.currentState.context);
                                  } else {
                                    _scaffoldState.currentState
                                        .showSnackBar(SnackBar(
                                      content: Text("Submit data failed"),
                                    ));
                                  }
                                });
                              },
                              child: Text(
                                "Submit".toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              color: Colors.orange[600],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _isLoading
                ? Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.3,
                        child: ModalBarrier(
                          dismissible: false,
                          color: Colors.grey,
                        ),
                      ),
                      Center(
                        child: CircularProgressIndicator(),
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
