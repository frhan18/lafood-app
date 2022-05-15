import 'package:apk_lafood/ui/Home/detail_product3.dart';
import 'package:flutter/material.dart';
import 'package:apk_lafood/models/data.dart';

Widget buildWithItemProduct3() {
  return Container(
    // margin: EdgeInsets.only(top: 32.0),
    padding: EdgeInsets.symmetric(horizontal: 12.0),
    margin: EdgeInsets.only(top: 8.0),
    height: 170,
    color: Colors.white,
    child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final _menuItem = listProduct3[index];
        return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailProduct3(data: _menuItem);
              }));
            },
            child: Container(
              width: 120,
              // height: 130,
              margin: EdgeInsets.only(right: 5.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(_menuItem.gambar_produk),
                            fit: BoxFit.cover,
                            alignment: Alignment.center),
                        border: Border.all(color: Colors.white24),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4.0),
                    child: Text(
                      _menuItem.nama_produk,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.store,
                          color: Colors.black54,
                          size: 14.0,
                        ),
                        Text(
                          "LAFOOD STORE",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ));
      },
      itemCount: listProduct3.length,
    ),
  );
}
