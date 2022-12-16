import 'package:flutter/material.dart';

AppBar CustomAppBar(){
  String title = "Django Library";
  return AppBar(
    title: Text(title),
    backgroundColor: const Color(0xFF001133),
  );
}