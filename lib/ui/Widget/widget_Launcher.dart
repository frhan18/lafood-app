import 'package:flutter/material.dart';

String launcherName = "LAFOOD";

Widget launcherScreen() {
  return Center(
    child: Text(
      launcherName,
      style: TextStyle(
        fontSize: 60.0,
        fontWeight: FontWeight.w600,
        color: Colors.redAccent,
      ),
    ),
  );
}
