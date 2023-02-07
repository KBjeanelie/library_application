import 'package:flutter/material.dart';

Container certifyWorker(){
  return Container(
    margin: const EdgeInsets.only(top: 5),
    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.blue,),
    child: Row(
      children: const [
        Icon(Icons.verified, size: 15, color: Colors.white,),
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text("Ouvrier certifier et vérifier", style: TextStyle(color: Colors.white),),
        )
      ],
    ),
  );
}

Container verifyWorker(){
  return Container(
    margin: const EdgeInsets.only(top: 5),
    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.green,),
    child: Row(
      children: const [
        Icon(Icons.check_circle, size: 15, color: Colors.white,),
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text("Ouvrier vérifier", style: TextStyle(color: Colors.white),),
        )
      ],
    ),
  );
}





Container cardOffer (){
  return Container(
    margin: const EdgeInsets.only(top: 10, bottom: 10),
    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
    color: Colors.white,
    child: Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: Stack(
                fit: StackFit.expand,
                children:const [
                   CircleAvatar(backgroundColor: Colors.grey),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Elijah Walter", style: TextStyle(color: Colors.black, fontSize: 15),),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.star, color: Colors.amber, size: 17,),
                        Text("4,95",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black),
                        ),
                        Text(" (105 avis)",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  certifyWorker()
                ],
              ),
            ),
            const Expanded(
              child: Text("500 XAF",
                textAlign: TextAlign.end,
                style: TextStyle(color: Color(0xFF363636), fontSize: 15),)
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Charpentier", style : TextStyle(color: Colors.grey, fontSize: 17)),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: const [
                    Icon(Icons.badge),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("5 à 9 d'expériences", style : TextStyle(color: Colors.black, fontSize: 15)),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}