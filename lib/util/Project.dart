import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        project_widget(
          'assets/dev1.jpg',
          'Aplikasi aye aye',
          'Sunday,06 Januari 2020',
          'Yogyakarta',
        ),
        // House Photo from https://unsplash.com/photos/XtnNrQYC7ts
        project_widget(
          'assets/dev2.jpg',
          'Aplikasi aye aye',
          'Sunday,06 Januari 2020',
          'Yogyakarta',
        ),
        project_widget(
          'assets/dev3.jpg',
          'Aplikasi aye aye',
          'Sunday,06 Januari 2020',
          'Yogyakarta',
        ),
        project_widget(
          'assets/dev4.jpg',
          'Aplikasi aye aye',
          'Sunday,06 Januari 2020',
          'Yogyakarta',
        ),
      ],
    );
  }

  Widget project_widget(
    String imageurl,
    String price,
    String no1,
    String no3,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        height: 300,
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
                    height: 200,
                    width: 500,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                      child: Image.asset(
                        imageurl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      price,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 5),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          no1,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                          ),
                        ),
                        Spacer(),
                        Text(
                          no3,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
