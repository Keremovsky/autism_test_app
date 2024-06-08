import 'package:flutter/material.dart';

class DropdownMenuItemConstants {
  static List<DropdownMenuItem<String>> gender = const [
    DropdownMenuItem(
      value: "m",
      child: Text("Male"),
    ),
    DropdownMenuItem(
      value: "f",
      child: Text("Female"),
    ),
  ];
}
