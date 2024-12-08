import 'package:flutter/material.dart';
import 'package:project_flutter/view/student.dart';

class StudentSingleView extends StatelessWidget {
  final Student student;

  const StudentSingleView({
    super.key,
    required this.student,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Output"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${student.fname} ${student.lname}',
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text('City: ${student.city}', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
