import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vendor5/models/projects.dart';

class ProjectDetail extends StatefulWidget {
  Project project;
  ProjectDetail(this.project);

  @override
  _ProjectDetailState createState() => _ProjectDetailState(this.project);
}

class _ProjectDetailState extends State<ProjectDetail> {
  Project project;
  _ProjectDetailState(this.project);

  final secondary = Color(0xfff29a94);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              leading: IconButton(
                icon: Icon(
                  Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Detail Project",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    )),
                background: CachedNetworkImage(
                    imageUrl:
                        'https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
                    fit: BoxFit.cover),
              ),
            ),
          ];
        },
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: AutoSizeText(
                project.title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(top: 15, bottom: 5),
                                  child: Text("Price",
                                      style: TextStyle(color: Colors.black54))),
                              Container(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Text(project.price.toString(),
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 16))),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(top: 15, bottom: 5),
                                  child: Text("type",
                                      style: TextStyle(color: Colors.black54))),
                              Container(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Text(project.type,
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 16))),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 5),
                                  child: Text("status",
                                      style: TextStyle(color: Colors.black54))),
                              Container(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text(project.status,
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 16))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text("client :"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text(
                            project.client,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                            color: Colors.blue[100],
                            width: 1,
                            style: BorderStyle.solid)),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text("Spec :"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text(
                            project.spec,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                            color: Colors.blue[100],
                            width: 1,
                            style: BorderStyle.solid)),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text("Waktu :"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                project.start.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14.0),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "-",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14.0),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                project.end.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                            color: Colors.blue[100],
                            width: 1,
                            style: BorderStyle.solid)),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          "Description".toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14.0),
                        ),
                        Text(
                          project.detail,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                _buildButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              onPressed: () {},
              child: Text("Ambil Project"),
              color: Colors.orange,
              textColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
