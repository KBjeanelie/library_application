import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image:  DecorationImage(
                    image: AssetImage("images/undraw_under_construction_46pa.png"),
                    fit: BoxFit.cover)
                ),
              ),
            ),
            const SizedBox(height: 20,),
            const Text("Nos univers de service", style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}