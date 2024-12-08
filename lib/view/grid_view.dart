import 'package:flutter/material.dart';

class SimpleGridView extends StatelessWidget {
  const SimpleGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text(
          'GridView',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10, // Horizontal space between items
          mainAxisSpacing: 10, // Vertical space between items
          childAspectRatio: 1, // Ratio of width to height
        ),
        padding: const EdgeInsets.all(10),
        itemCount: 6, // Total number of items
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey, // Single consistent color
              borderRadius: BorderRadius.circular(12), // Curved corners
            ),
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
