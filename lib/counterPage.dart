import 'package:flutter/material.dart';

class ListviewCustomExample extends StatefulWidget {
  const ListviewCustomExample({super.key});

  @override
  State<ListviewCustomExample> createState() => _ListviewCustomExampleState();
}

class _ListviewCustomExampleState extends State<ListviewCustomExample> {

  final List<Map<String, dynamic>> products = [
    {"name": "Laptop", "price": 55000},
    {"name": "Mobile", "price": 25000},
    {"name": "Headphones", "price": 3000},
    {"name": "Keyboard", "price": 1500},
    {"name": "Mouse", "price": 800},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListView Custom"),
        backgroundColor: Colors.white,
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            final product = products[index];
            return Card(
              child: ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: Text(product["name"]),
                subtitle: Text("₹ ${product["price"]}"),
              ),
            );
          },
          childCount: products.length,
        ),
      ),
    );
  }
}
