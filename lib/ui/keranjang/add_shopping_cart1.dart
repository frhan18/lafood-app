import 'package:apk_lafood/models/data.dart';
import 'package:flutter/material.dart';

class AddShoppingCart1 extends StatefulWidget {
  final Product1 data;
  const AddShoppingCart1({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  _AddShoppingCart1State createState() => _AddShoppingCart1State();
}

class _AddShoppingCart1State extends State<AddShoppingCart1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "KERANJANG SAYA",
          style: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        height: 400.0,
        margin: EdgeInsets.only(top: 18.0),
        padding: EdgeInsets.all(8.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //
            _buildCardAddShopping(),
          ],
        ),
      )),
    );
  }

  Widget _buildCardAddShopping() {
    return Container(
      width: 100.0,
      height: 350.0,
      alignment: Alignment.center,
      color: Colors.white,
      child: Card(
        elevation: 0.4,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 250.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.data.gambar_produk),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(12.0)),
            ),
            Container(
              margin: EdgeInsets.only(top: 18.0),
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
//
                  SizedBox(
                    height: 25.0,
                    child: Text(
                      widget.data.nama_produk,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    child: Text(
                      "Rp ${widget.data.harga_produk}",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.redAccent),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
