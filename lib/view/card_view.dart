import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Card"),
      ),
      body: const SafeArea(
          child: Column(
        children: [
          MyCard(
            text: ("Card1"),
            color: Colors.blue,
          ),
          MyCard(
            text: ("Card 2"),
          ),
          MyCard(
            text: ("Card3 "),
          ),
          MyCard(
            text: ("Card3 "),
            color: Colors.greenAccent,
          )
        ],
      )),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.text,
    this.color,
  });

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: color ?? Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}
