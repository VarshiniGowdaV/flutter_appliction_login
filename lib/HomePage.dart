import 'package:flutter/material.dart';
import 'package:flutter_application_1/project_form_page.dart';
import 'package:flutter_application_1/Picker_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome User"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProjectFormPage()),
                );
              },
              child: const Text("Create New Project"),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  PickerPage()),
                );
              },
              child: const Text("Open Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
