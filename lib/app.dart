import 'package:flutter/material.dart';
import 'package:project_flutter/view/number_grid_view.dart';
// import 'package:project_flutter/view/grid_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner

      home: NumberGridView(), // Sets SimpleGridView as the default screen
    );
  }
}
