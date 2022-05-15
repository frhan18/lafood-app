import 'package:apk_lafood/ui/Home/Custom_AppBar.dart';
import 'package:apk_lafood/ui/Widget/widget_item_product1.dart';
import 'package:apk_lafood/ui/Widget/widget_item_product2.dart';
import 'package:apk_lafood/ui/Widget/widget_item_product3.dart';
import 'package:apk_lafood/ui/Widget/widget_item_product4.dart';
import 'package:apk_lafood/ui/Widget/widget_text_menu1.dart';
import 'package:apk_lafood/ui/Widget/widget_text_menu2.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: HomeCustomAppBar(),
      body: SingleChildScrollView(
          child: Container(
        height: 1250,
        margin: EdgeInsets.only(top: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // hero image
            buildHeroWithMenu(),
            // Tampil Menu item pertama
            buildTextMenu1(),
            buildWithItemProduct1(),
            buildWithItemProduct2(),
            Divider(
              color: Colors.black12,
              height: 20.0,
              indent: 10.0,
              endIndent: 10.0,
            ),
            // Tampil Menu item kedua
            buildTextMenu2(),
            buildWithItemProduct3(),
            buildWithItemProduct4(),
          ],
        ),
      )),
    );
  }

  Widget buildHeroWithMenu() {
    return Container(
      width: 100.0,
      height: 250.0,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(bottom: 12.0, top: 12.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(
            child: Container(
              margin: EdgeInsets.only(right: 6.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/hero-1.jpeg'),
              ),
            ),
          ),
          SizedBox(
            child: Container(
              margin: EdgeInsets.only(right: 6.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/makanan-14.jpg'),
              ),
            ),
          ),
          SizedBox(
            child: Container(
              margin: EdgeInsets.only(right: 6.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/minuman_2.jpg'),
              ),
            ),
          ),
          //
        ],
      ),
    );
  }
}
