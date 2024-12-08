import 'package:flutter/material.dart';

class LoadImageView extends StatelessWidget {
  const LoadImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
          child: Center(
        child: SizedBox(
            height: MediaQuery.of(context).size.height * .8,
            width: MediaQuery.of(context).size.height * .5,
            child: Image.asset(
              'assets/images/lion.jpeg',
              fit: BoxFit.fill,
            )),
      )),
    );
  }
}
