import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vendor5/api/api_service.dart';
import 'package:vendor5/models/projects.dart';
import 'package:vendor5/pages/ProjectDetail.dart';

class ListProject extends StatefulWidget {
  ListProject({Key key}) : super(key: key);

  _ListProjectState createState() => _ListProjectState();
}

class _ListProjectState extends State<ListProject> {
  ApiService apiService;

  @override
  void initState() {
    super.initState();
    apiService = ApiService();
  }

  final TextStyle dropdownMenuItem =
      TextStyle(color: Colors.black, fontSize: 18);

  final primary = Color.fromRGBO(1, 186, 239, 100);
  final secondary = Color(0xfff29a94);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
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
          "Daftar Project",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: FutureBuilder(
                  future: apiService.getProjects(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Project>> snaphot) {
                    if (snaphot.hasError) {
                      var snapshot;
                      return Center(
                        child: Text(
                            "Error bro konek internet dulu: ${snapshot.error.toString()}"),
                      );
                    } else if (snaphot.connectionState ==
                        ConnectionState.done) {
                      List<Project> projects = snaphot.data;

                      return _buildList(projects);
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
              /* Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Platform.isIOS
                              ? Icons.arrow_back_ios
                              : Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Text(
                        "Daftar Project",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ), */
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildList(List<Project> projects) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListView.builder(
        itemBuilder: (context, index) {
          Project project = projects[index];
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProjectDetail(projects[index])),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 3, color: secondary),
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              'https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              project.title,
                              style: TextStyle(
                                  color: primary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: secondary,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(project.price.toString(),
                                  style: TextStyle(
                                      color: primary,
                                      fontSize: 13,
                                      letterSpacing: .3)),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.school,
                                color: secondary,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(project.price.toString(),
                                  style: TextStyle(
                                      color: primary,
                                      fontSize: 13,
                                      letterSpacing: .3)),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: projects == null ? 0 : projects.length,
      ),
    );
  }

  /*  Widget _buildListView(List<Project> projects) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListView.builder(
        itemBuilder: (context, index) {
          Project project = projects[index];
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Card(
              elevation: 0.5,
              child: InkWell(
                borderRadius: BorderRadius.circular(4.0),
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 3, color: secondary),
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              'https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        padding: const EdgeInsets.all(16.0),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    project.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                    softWrap: true,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5.0,
                                    horizontal: 8.0,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Theme.of(context).primaryColor),
                                  child: Text(
                                    project.price,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5.0),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: project.spec,
                                  ),
                                ],
                              ),
                              style: TextStyle(color: Colors.grey.shade700),
                            ),
                            const SizedBox(height: 5.0),
                            Row(
                              children: <Widget>[Text(project.status)],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: projects.length,
      ),
    );
  } */
}
