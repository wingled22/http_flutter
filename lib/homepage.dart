import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/category.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List<Ctgry> categories = [];

  Future getCategories() async {
    var response = await http.get(
      Uri.https('localhost:7264', "/api/categoryapi"));
    var jsonData = jsonDecode(response.body);
    print(response.body);
    for (var cat in jsonData) {
      final category = Ctgry(
        CatId: cat['id'],
        CatName: cat['name'],
      );
      categories.add(category);
    }
  }

  Future postCategory() async{
    var response = await http.post(
      Uri.parse("https://localhost:7264/api/categoryapi"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(
        {
          'Name': "Milk",
          'Status': "shesh"
         })
    );

    if (response.statusCode < 299) {
      // print('Data posted successfully');
      var jsonData = jsonDecode(response.body);
      final newcategory = Ctgry(CatId: jsonData['id'], CatName: jsonData['name']);
      setState(() {
        categories.add(newcategory);
      });
    } else {
      print('Failed to post data');
      print('Response: ${response.body}');
    }
  }


  void showAddCategory(){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          title: const Text("Hello, it's me.."),
          content: const Column(
            children: [
              TextField(),
              TextField(),
            ],
          ),
          actions: [
            MaterialButton(
              onPressed: postCategory,
              child: const Text("save"),
            ),
            MaterialButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text("cancel")
            ),
          ],
        );
      }
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: FutureBuilder(
          future: getCategories(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                itemCount: categories.length,
                padding: const EdgeInsets.all(8),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 165, 74, 74),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        title: Text(categories[index].CatId.toString()),
                        subtitle: Text(categories[index].CatName),
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
          floatingActionButton: FloatingActionButton(
            onPressed: showAddCategory,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white,
            child: const Icon(Icons.add),
          ),
    );
  }
}


