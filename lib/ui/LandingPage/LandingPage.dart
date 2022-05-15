import 'package:apk_lafood/ui/Akun/Akun_view.dart';
import 'package:apk_lafood/ui/Home/Home.dart';
import 'package:apk_lafood/ui/Notifikasi/notifikasi.dart';
import 'package:apk_lafood/ui/keranjang/keranjang.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    Key? key,
  }) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;

  List<Widget> _container = [
    Home(),
    Keranjang(),
    Notifikasi(),
    AkunView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildBottomNavigation() {
    return new BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.shifting,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          icon: new Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: new Text(
            'Beranda',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: new Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          title: new Text(
            'Keranjang',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: new Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          title: new Text(
            'Notifikasi',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: new Icon(
            Icons.person,
            color: Colors.black,
          ),
          title: new Text(
            'Akun',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
