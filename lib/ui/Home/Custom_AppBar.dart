import 'package:flutter/material.dart';

String textAppBar = "LAFOOD";

class HomeCustomAppBar extends AppBar {
  HomeCustomAppBar()
      : super(
            elevation: 0.25,
            backgroundColor: Colors.white,
            flexibleSpace: _buildCustomAppBar());

  static Widget _buildCustomAppBar() {
    return SafeArea(
        child: Container(
      color: Colors.white,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(textAppBar,
                style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    color: Colors.black)),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(6.0),
                    child: Row(children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ]))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
