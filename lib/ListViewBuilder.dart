import 'package:flutter/material.dart';

class Listviewbuilder extends StatefulWidget {
  const Listviewbuilder({super.key});

  @override
  State<Listviewbuilder> createState() => _ListviewbuilderState();
}

class _ListviewbuilderState extends State<Listviewbuilder> {

  final List<String> contacts = [
    "Varshini",
    "Anu",
    "Kiran",
    "Ravi",
    "Sita",
    "Rahul",
    "Priya",
    "anthia",
    "veeranna",
    "anil",
    "sunil",
    "bharathi",
    "rama",
    "Ranjith",
    "vysu",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Builder"),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(contacts[index]),
          );
        },
      ),
    );
  }
}
