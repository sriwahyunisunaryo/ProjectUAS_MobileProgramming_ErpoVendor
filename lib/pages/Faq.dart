import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';

class Faq extends StatefulWidget {
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
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
          "FAQ",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Faq()),
                  );
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/home3.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
          ExpansionTile(
            leading:
                Icon(GroovinMaterialIcons.apps, color: Colors.indigoAccent),
            title: Text(
              "PT ERPORATE SOLUSI GLOBAL itu perusahaan apa sih ?",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 14),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 12.0, top: 16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: AutoSizeText(
                            "PT ERPORATE SOLUSI GLOBAL merupakan perusahaan digital agency  yang berfokus pada bidang industri IT. ",
                            maxLines: 2,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading:
                Icon(GroovinMaterialIcons.apps, color: Colors.indigoAccent),
            title: Text(
              "Apa saja layanan yang diberikan perusahaan ?",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 14),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 12.0, top: 16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: AutoSizeText(
                            "1. Development Apps\n2. Outsource\n3. IoT\n4. Digital Strategy\n5. Training \n6. Business Partner",
                            maxLines: 6,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading:
                Icon(GroovinMaterialIcons.apps, color: Colors.indigoAccent),
            title: Text(
              "Alamat kantor Erporate itu dimana ? ",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 14),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 12.0, top: 16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: AutoSizeText(
                            "PT Erporate Solusi Global, Jl. Wira Jaya No.310A, Gejayan, Condongcatur, Depok Sub-District, Sleman Regency, Special Region of Yogyakarta 55581",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading:
                Icon(GroovinMaterialIcons.apps, color: Colors.indigoAccent),
            title: Text(
              "“Erpo Vendor” itu apa ?",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 14),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 12.0, top: 16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: AutoSizeText(
                            "Erpo Vendor adalah aplikasi pendaftaran vendor pada Erporate berbasis mobile apps. Dimana aplikasi diperuntukkan calon vendor guna mempermudah dalam melakukan pendaftaran vendor dan mengakses informasi perusahaan. ",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading:
                Icon(GroovinMaterialIcons.apps, color: Colors.indigoAccent),
            title: Text(
              "Apa saja keuntungan menggunakan aplikasi ini ?",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 14),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 12.0, top: 16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: AutoSizeText(
                            "Menghemat cost pendaftaran, lebih efektif dan fleksible, userfriendly dan userable.",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
