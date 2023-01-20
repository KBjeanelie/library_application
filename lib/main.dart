import 'package:flutter/material.dart';
import 'package:library_application/Pages/home_pages.dart';
import 'package:library_application/Pages/notification.dart';
import 'package:library_application/Pages/profile_info.dart';
import 'package:library_application/Pages/profile_screen.dart';
import 'package:library_application/Pages/profile_worker_view.dart';
import 'package:library_application/Pages/search.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchWorkerView(),
    );
  }
}