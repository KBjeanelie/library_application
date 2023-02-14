import 'package:flutter/material.dart';

class ProfileWorkerView extends StatelessWidget {
  const ProfileWorkerView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.grey,
            onPressed: () {  },
          ),
        ),
        body: Column(
          children:const [
             ProfilePictureWorker(),
            TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(text: "À propos",),
                Tab(text: "Portofolio",),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Icon(Icons.directions_car),
                  Icon(Icons.directions_transit),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ProfilePictureWorker extends StatelessWidget {
  const ProfilePictureWorker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:  [
            SizedBox(
              height: 80,
              width: 80,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  const CircleAvatar(backgroundColor: Colors.grey),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: MaterialButton(
                        onPressed: (){},
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                          side: const BorderSide(color: Colors.white)
                        ),
                        color: Colors.white,
                        child: const Icon(Icons.check_circle, color: Colors.green,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text("Elijah Walter",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star, color: Colors.amber, size: 17,),
                Text("4,95",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
                ),
                Text(" (105 avis)",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
                ),
              ],
            ),
            const Text("Membre depuis 4 mois",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45),
            ),
            const Text("50 jobs réalisés",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
} 