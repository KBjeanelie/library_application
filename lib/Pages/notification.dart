import 'package:flutter/material.dart';

class NotificationApp extends StatelessWidget {
  const NotificationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: const Text("Notification", style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.grey,
          onPressed: () {  },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          MaterialButton(
            padding: const EdgeInsets.all(20),
            color: const Color.fromARGB(255, 215, 220, 228),
            elevation: 0,
            onPressed: () {  },
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "il y a 12 heures",
                        style: TextStyle(color: Colors.black54),),
                      Text(
                        "Walter a commenté votre annonce 'Pose de prise RJ45'",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right_sharp,
                  size: 30,
                  color: Colors.grey
                ),
              ],
            ),
          ),


          MaterialButton(
            padding: const EdgeInsets.all(20),
            color: Colors.white,
            elevation: 0,
            onPressed: () {  },
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "il y a 12 heures",
                        style: TextStyle(color: Colors.black54),),
                      Text(
                        "Walter a commenté votre annonce 'Pose de prise RJ45'",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right_sharp,
                  size: 30,
                  color: Colors.grey
                ),
              ],
            ),
          ),

          MaterialButton(
            padding: const EdgeInsets.all(20),
            color: const Color.fromARGB(255, 215, 220, 228),
            elevation: 0,
            onPressed: () {  },
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "il y a 12 heures",
                        style: TextStyle(color: Colors.black54),),
                      Text(
                        "Walter a commenté votre annonce 'Pose de prise RJ45'",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right_sharp,
                  size: 30,
                  color: Colors.grey
                ),
              ],
            ),
          ),

          MaterialButton(
            padding: const EdgeInsets.all(20),
            color: const Color.fromARGB(255, 215, 220, 228),
            elevation: 0,
            onPressed: () {  },
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "il y a 12 heures",
                        style: TextStyle(color: Colors.black54),),
                      Text(
                        "Walter a commenté votre annonce 'Pose de prise RJ45'",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right_sharp,
                  size: 30,
                  color: Colors.grey
                ),
              ],
            ),
          ),

          MaterialButton(
            padding: const EdgeInsets.all(20),
            color: const Color.fromARGB(255, 215, 220, 228),
            elevation: 0,
            onPressed: () {  },
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "il y a 12 heures",
                        style: TextStyle(color: Colors.black54),),
                      Text(
                        "Walter a commenté votre annonce 'Pose de prise RJ45'",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right_sharp,
                  size: 30,
                  color: Colors.grey
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}


