import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vendor5/api/api_service.dart';
import 'package:vendor5/models/Penilaian.dart';

class Penilaianpage extends StatefulWidget {
  Penilaianpage({Key key}) : super(key: key);

  @override
  _PenilaianpageState createState() => _PenilaianpageState();
}

class _PenilaianpageState extends State<Penilaianpage> {
  ApiService apiService;

  @override
  void initState() {
    super.initState();
    apiService = ApiService();
  }

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
          "Penilaian",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(18.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //width: double.infinity,
          child: FutureBuilder(
            future: apiService.getPenilaians(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Penilaian>> snaphot) {
              if (snaphot.hasError) {
                var snapshot;
                return Center(
                  child: Text(
                      "Error bro konek internet dulu: ${snapshot.error.toString()}"),
                );
              } else if (snaphot.connectionState == ConnectionState.done) {
                List<Penilaian> penilaians = snaphot.data;

                return _buildList(penilaians);
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildList(List<Penilaian> penilaians) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemBuilder: (context, index) {
          Penilaian penilaian = penilaians[index];
          return Container(
            height: 360,
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 160.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  'https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: AutoSizeText(
                          penilaian.title,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "vendor instansi :",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 10),
                            Text(
                              penilaian.vendorInstansi,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          width: 280,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "kinerja:",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    penilaian.kinerja.toString(),
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "ketepatan :",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    penilaian.ketepatan.toString(),
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "komunikasi :",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    penilaian.komunikasi.toString(),
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      /*     RaisedButton(
                        color: Color(0xFF162A49),
                        child: Text('Lihat Project'),
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        onPressed: () {
                          launch(penilaian.vendorWebsite);
                        },
                      ), */

                      //const SizedBox(height: 20.0),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: penilaians.length,
      ),
    );
  }
}
