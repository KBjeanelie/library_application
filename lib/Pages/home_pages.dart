import 'package:flutter/material.dart';
import 'package:library_application/Constaints/api.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:library_application/Models/models.dart';
import 'package:library_application/Widgets/app_bar.dart';
import 'package:library_application/Widgets/category_container.dart';

import 'add_book_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Category> categories = [];
  bool isLoading = true;
  void fetchData() async{
    try {
      
        http.Response response = await http.get(Uri.parse(get_category_path));
        
        var categories_data = jsonDecode(response.body);

        categories_data.forEach((cat){
          categories.add(Category(id: cat['id'],
          label: cat['label'],
          created_at: cat['created_at'],
          updated_at: cat['updated_at'])
          );
        });
        setState(() {
          if (categories.isEmpty) {
            isLoading = true;
          }else{
            isLoading = false;
          }
        });

    } catch (e) {
      print("This error is $e");
    }
  }
  @override
  void initState() {
    fetchData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body:
        isLoading
        ?const Center(
          child: Text("No Book founds",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black87
            ),
          ),
        )
        :ListView(
          children: categories.map((e) {
            return  CategoryContainer(
              id: 1, 
              label: e.label, 
              created_at: e.created_at,
              updated_at: e.updated_at
            );
          }
        ).toList()
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  AddDogFormPage()),
          );
        },
        backgroundColor: const Color(0xFF001133),
        label: const Text('Add'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}