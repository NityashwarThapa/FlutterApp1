import 'package:flutter/material.dart';

class ClassworkView extends StatelessWidget {
  const ClassworkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row And Column"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // The Row at the top
          Row(
            children: [
              Container(
                height: 100,
                width: 150,
                color: const Color.fromARGB(255, 66, 192, 255),
              ),
              Container(
                height: 100,
                width: 150,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 130,
                color: const Color.fromARGB(255, 66, 192, 255),
              ),
            ],
          ),
          // Spacer to add some space between the Row and Columns

          // First Column
          Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blue,
              ),
            ],
          ),
          // Second Column
          Column(
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
          // Third Column
          Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.deepPurple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
