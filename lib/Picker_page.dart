import 'package:flutter/material.dart';

class PickerPage extends StatefulWidget {
  const PickerPage({super.key});

  @override
  State<PickerPage> createState() => PickerPageState();
}

class PickerPageState extends State<PickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Picker Page"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {},
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
                  MaterialPageRoute(
                    builder: (context) => const PickerPage(),
                  ),
                );
              },
              child: const Text("File Picker"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
              },
              child: const Text("Image Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
