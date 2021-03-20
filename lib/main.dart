import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: <Widget>[
          ListRegister(
            image: 'asset/image/ic_rectangle.png',
            judul: "Upload Foto",
          ),
          ListRegister(
            image: 'asset/image/ic_rectangle.png',
            judul: "Upload NPWP",
          ),
          ListRegister(
            image: 'asset/image/ic_rectangle.png',
            judul: "Lorem Ipsum",
          ),
          ListRegister(
            image: 'asset/image/ic_rectangle.png',
            judul: "Lorem Ipsum",
          )
        ],
      ),
    );
  }
}

class ListRegister extends StatelessWidget {
  ListRegister({this.image, this.judul});

  final String image;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Row(
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              child: Image.asset(image),
            ),
            Container(
              padding: EdgeInsets.only(left: 5.0),
                child: Text(
                  judul,
                  style: TextStyle(fontSize: 20.0),
                )),
            ]
        ),
        ),
      ),
    );
  }
}
