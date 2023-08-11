import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_flutter/components/categoryTile.dart';
import 'models/category.dart';

class Homepage2 extends StatefulWidget {
  const Homepage2({ Key? key }) : super(key: key);

  @override
  _Homepage2State createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {

  List<Ctgry> categories = [];
  late TextEditingController catController = new TextEditingController();
  late TextEditingController statusController = new TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchCategories(); // Fetch categories when the widget is initialized
  }

  Future<void> fetchCategories() async {
    var response = await http.get(Uri.https('localhost:7264', "/api/categoryapi"));
    var jsonData = jsonDecode(response.body);
    
    List<Ctgry> fetchedCategories = [];
    
    for (var cat in jsonData) {
      final category = Ctgry(
        CatId: cat['id'],
        CatName: cat['name'],
      );
      fetchedCategories.add(category);
    }

    setState(() {
      categories = fetchedCategories; // Update categories list with fetched data
    });
  }

  Future<void> postCategory() async {
    var response = await http.post(
      Uri.parse("https://localhost:7264/api/categoryapi"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(
        {
          'Name': catController.text,
          'Status': statusController.text,
        },
      ),
    );

    var jsonData = jsonDecode(response.body);
    final newCategory = Ctgry(CatId: jsonData['id'], CatName: jsonData['name']);
    setState(() {
      categories.add(newCategory);
      categories.sort((a, b) => b.CatId.compareTo(a.CatId));
      Navigator.pop(context);
    });
  }



  void showAddCategory(){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          title: const Text("Hello, it's me.."),
          content: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:8.0, right: 8, top: 8),
                child: TextField(
                  controller: catController,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),  // Padding around the input content
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber, width: 2.0),  // Border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),  // Customize the color and width for focused state
                      ),  
                      hintText: 'Enter text',  // Placeholder text
                    ),
                  ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:8.0, right: 8, top: 8),
                child: TextField(
                controller: statusController,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),  // Padding around the input content
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber, width: 2.0),  // Border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),  // Customize the color and width for focused state
                    ),  
                    hintText: 'Enter text',  // Placeholder text
                  ),
                ),
              ),
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
        initialData: categories,
        future: Future.value(categories),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: categories.length,
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                return CategoryTile(Id: categories[index].CatId, Name: categories[index].CatName);
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showAddCategory,
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}


