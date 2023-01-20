// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:library_application/Models/worker.dart';
class SearchWorkerView extends StatefulWidget {
  const SearchWorkerView({super.key});

  @override
  State<SearchWorkerView> createState() => _SearchWorkerViewState();
}


class _SearchWorkerViewState extends State<SearchWorkerView> {
  //create a dummy list
  static List<ProfileWorkerModel> workers = [
    ProfileWorkerModel(name: "Walter", firstname: "Elijah", avis: 50, jobs: 100),
    ProfileWorkerModel(name: "UZUMAKI", firstname: "Naruto", avis: 500, jobs: 250),
    ProfileWorkerModel(name: "IYUGA", firstname: "Néji", avis: 5, jobs: 100),
    ProfileWorkerModel(name: "PAMBOU", firstname: "Grâce", avis: 10, jobs: 10),
    ProfileWorkerModel(name: "PAMBOU", firstname: "Adry Athony", avis: 75, jobs: 80),
    ProfileWorkerModel(name: "MAPASSI", firstname: "Dony Glène", avis: 50, jobs: 50),
    ProfileWorkerModel(name: "NGATSÉ", firstname: "Béniche", avis: 25, jobs: 70),
    ProfileWorkerModel(name: "NZIHOU", firstname: "Michel Jennifer", avis: 50, jobs: 50),
  ];

  List<ProfileWorkerModel> display_list = List.from(workers);


  void updateList(String value){
    //this is the function that filter our liste
    setState(() {
      display_list = workers.where((element) => element.firstname.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const Text("Trouver un ouvrier", style: TextStyle(
                color: Colors.black,
                fontSize: 22.0, 
                fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                onChanged: (value) => updateList(value),
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(115, 214, 212, 212),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none
                    ),
                  hintText: "ex : John Doen",
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: display_list.isEmpty ?
                const Center(
                  child: Text("Aucun ouvrier ne correspond "),
                )
                :ListView.builder(
                  itemCount: display_list.length,
                  itemBuilder: (context, index) => profile_card_view(
                    fullname: "${display_list[index].firstname} ${display_list[index].name}",
                    avis: display_list[index].avis,
                    jobs: display_list[index].jobs,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}


class profile_card_view extends StatelessWidget {
  const profile_card_view({
    Key? key, required this.fullname, required this.avis, required this.jobs,
  }) : super(key: key);

  final String fullname;
  final int avis;
  final int jobs;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children:  [
            SizedBox(
              height: 70,
              width: 70,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(fullname,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Icon(Icons.star, color: Colors.amber, size: 17,),
                      const Text("4,95",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber),
                      ),
                      Text(" ($avis avis)",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                      ),
                    ],
                  ),
                  const Text("Membre depuis 4 mois",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                  Text("$jobs jobs réalisés",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/**
 * 
 * ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  MaterialButton(
                    onPressed: (){},
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black12)
                    ),
                    elevation: 0.5,
                    color: Colors.white,
                    child: const profile_card_view(),
                  ),
                  const SizedBox( height: 10.0, ),
                  MaterialButton(
                    onPressed: (){},
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black12)
                    ),
                    elevation: 0.5,
                    color: Colors.white,
                    child: const profile_card_view(),
                  ),
                  const SizedBox( height: 10.0, ),
                  MaterialButton(
                    onPressed: (){},
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black12)
                    ),
                    elevation: 0.5,
                    color: Colors.white,
                    child: const profile_card_view(),
                  ),
                  const SizedBox( height: 10.0, ),
                  MaterialButton(
                    onPressed: (){},
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black12)
                    ),
                    elevation: 0.5,
                    color: Colors.white,
                    child: const profile_card_view(),
                  ),
                  const SizedBox( height: 10.0, ),
                  MaterialButton(
                    onPressed: (){},
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black12)
                    ),
                    elevation: 0.5,
                    color: Colors.white,
                    child: const profile_card_view(),
                  ),
                ],
              )
 */