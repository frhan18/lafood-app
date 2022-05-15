import 'package:apk_lafood/models/data.dart';
import 'package:apk_lafood/ui/keranjang/add_shopping_cart3.dart';
import 'package:flutter/material.dart';

class DetailProduct3 extends StatefulWidget {
  final Product3 data;
  const DetailProduct3({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  _DetailProduct3State createState() => _DetailProduct3State();
}

class _DetailProduct3State extends State<DetailProduct3> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[buildDetailMenuSafeArea(), buildDetaiWithDesc()],
        ),
      ),
    );
  }

  Widget buildDetailMenuSafeArea() {
    return Stack(
      children: <Widget>[
        Container(
          height: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.data.gambar_produk),
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white30,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black,
                    iconSize: 22,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                _buildFavoriteLoveWithDesc(),
                // CircleAvatar(
                //   backgroundColor: Colors.white30,
                //   child: IconButton(
                //     icon: Icon(Icons.share),
                //     color: Colors.black,
                //     iconSize: 22,
                //     onPressed: () {},
                //   ),
                // )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDetaiWithDesc() {
    return Container(
      height: 550.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      widget.data.nama_produk,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "${widget.data.desc_produk}",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 12.0),
                    child: Text("${widget.data.sell_produk} terjual",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        )),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Rp${widget.data.harga_produk}",
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.redAccent,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.redAccent,
                          child: IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.white,
                            iconSize: 22,
                            onPressed: () {
                              if (true) {
                                Navigator.of(context).pushReplacement(
                                    new MaterialPageRoute(builder: (_) {
                                  return AddShoppingCart3(
                                    data: widget.data,
                                  );
                                }));
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            child: Container(
              margin: EdgeInsets.only(top: 32.0),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  //
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Gambar lainnya dari ${widget.data.nama_produk}",
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 12.0),
                      height: 150.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: widget.data.detail_image.map((image) {
                          return Padding(
                            padding: EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(image),
                            ),
                          );
                        }).toList(),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFavoriteLoveWithDesc() {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_outline,
        color: Colors.red,
        size: 32,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
