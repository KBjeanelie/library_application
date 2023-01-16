import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: const Text("Profile", style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.grey,
          onPressed: () {  },
        ),
      ),
      body: Column(
        children: [
          const ProfilePicture(),
          const SizedBox(height: 10,),
          ProfileMenuWidget(
            text: "Informations personnelles",
            icon: Icons.person,
            press: (){}
          ),
          ProfileMenuWidget(
            text: "Notifications",
            icon: Icons.notifications_active,
            press: (){}
          ),
          ProfileMenuWidget(
            text: "Paramètre",
            icon: Icons.settings,
            press: (){}
          ),
          ProfileMenuWidget(
            text: "Centre d'aide",
            icon: Icons.help,
            press: (){}
          ),
          ProfileMenuWidget(
            text: "Confiance et sécurité",
            icon: Icons.safety_check,
            press: (){}
          ),
          ProfileMenuWidget(
            text: "Devenir Ouvrier",
            icon: Icons.work,
            press: (){}
          ),
          ProfileMenuWidget(
            text: "Se déconnecter",
            icon: Icons.logout,
            press: (){}
          ),
        ]
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key, required this.text, required this.icon, required this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        onPressed: press,
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.blue,),
            const SizedBox(width: 20,),
            Expanded(
              child: Text(text,
              style: const TextStyle(color: Colors.black, fontSize: 15),),
            )
          ],
        ),
      ),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
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
              height: 110,
              width: 110,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  const CircleAvatar(backgroundColor: Colors.grey),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: SizedBox(
                      height: 35,
                      width: 35,
                      child: MaterialButton(
                        onPressed: (){},
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                          side: const BorderSide(color: Colors.white)
                        ),
                        color: const Color(0xFFF5F6F9),
                        child: const Icon(Icons.camera_alt_rounded, color: Colors.grey,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("@KBjeanelie",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
} 