import 'package:flutter/material.dart';

class FlexiableExpandedView extends StatelessWidget {
  const FlexiableExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.amber,
            ),
          ),
          Expanded(
            child: Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                width: double.infinity,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
