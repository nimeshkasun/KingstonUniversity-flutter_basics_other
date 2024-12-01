import 'package:flutter/material.dart';
import 'lists.dart';

class ListCard extends StatelessWidget {
  final Lists student;
  final void Function()? delete;

  const ListCard({super.key, required this.student, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              student.name,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              student.educationalLevel,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextButton.icon(
              onPressed: delete,
              label: const Text('Delete Student'),
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
