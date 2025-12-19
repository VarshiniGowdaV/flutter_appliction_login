import 'package:flutter/material.dart';

class Listviewseparated extends StatefulWidget {
  const Listviewseparated({super.key});

  @override
  State<Listviewseparated> createState() => _ListviewseparatedState();
}

class _ListviewseparatedState extends State<Listviewseparated> {
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
        title: const Text("ListView Separated"),
        backgroundColor: Colors.white,
      ),
      body: ListView.separated(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(contacts[index]),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
