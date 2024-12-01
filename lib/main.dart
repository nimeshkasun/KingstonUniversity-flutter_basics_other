import 'package:flutter/material.dart';
import 'lists.dart';
import 'lists_card.dart';

void main() {
  runApp(const MaterialApp(
    home: BasicList(),
  ));
}

class BasicList extends StatefulWidget {
  const BasicList({super.key});

  @override
  State<BasicList> createState() => _BasicListState();
}

class _BasicListState extends State<BasicList> {

  List<Lists> studentList = [
    Lists(name: 'John Doe', educationalLevel: 'Undergraduate'),
    Lists(name: 'Alain Ford', educationalLevel: 'Undergraduate'),
    Lists(name: 'Stella Fernando', educationalLevel: 'Undergraduate')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Student List'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children:
          studentList.map((student) => ListCard(
            student: student,
            delete: () {
              setState(() {
                studentList.remove(student);
              });
            },
          )).toList(),
      ),
    );
  }
}

