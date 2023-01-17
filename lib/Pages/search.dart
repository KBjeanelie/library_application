import 'package:flutter/material.dart';
class SearchWorkerView extends StatefulWidget {
  const SearchWorkerView({super.key});

  @override
  State<SearchWorkerView> createState() => _SearchWorkerViewState();
}


class _SearchWorkerViewState extends State<SearchWorkerView> {
  //create a dummy list
  // static List<MovieModel> main_movies = [
  //   MovieModel("Original", 2020, 9.0),
  //   MovieModel("Baby boss", 2010, 9.0),
  //   MovieModel("Dark Matter", 2009, 8.0),
  // ];

  // List<MovieModel> display_list = List.from(main_movies);


  // void updateList(String value){
  //   //this is the function that filter our liste
  //   setState(() {
  //     display_list = main_movies.where((element) => element.movie_title!.toLowerCase().contains(value.toLowerCase())).toList();

  //   });
  // }
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
                height: 20.0,
              ),
          ],
        ),
      ),
    );
  }
}