// import 'dart:html';

import 'package:flutter/material.dart';

class AkunView extends StatefulWidget {
  const AkunView({
    Key? key,
  }) : super(key: key);

  @override
  _AkunViewState createState() => _AkunViewState();
}

class _AkunViewState extends State<AkunView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: 100.0,
              height: 700.0,
              margin: EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 100.0,
                    height: 250.0,
                    color: Colors.white,
                    child: CircleAvatar(
                      backgroundColor: Colors.white30,
                      child: IconButton(
                        icon: Icon(Icons.person),
                        color: Colors.black,
                        iconSize: 70,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 350.0,
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        textInfo(),
                        userInfo(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textInfo() {
    return Container(
      height: 30.0,
      child: Text(
        "Info Akun",
        style: TextStyle(
            fontSize: 22.0, fontWeight: FontWeight.w600, color: Colors.black),
      ),
    );
  }

  Widget userInfo() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Username",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                Text(
                  "Farhan",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                Text(
                  "15200212@bsi.ac.id",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "City",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                Text(
                  "Cibitung-bekasi , Jawa barat",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Handphone",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                Text(
                  "+6282298717364",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Age",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                Text(
                  "19",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Gender",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                Text(
                  "Laki-laki",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
