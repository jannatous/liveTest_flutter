import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyHome extends StatefulWidget {
  const MyHome({super.key});
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              width: 100,
              height: 100,
              child: Image.network(
                'https://via.placeholder.com/150',
              ),
            ),
          );
        },
      );
    } else
    {
      return GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),

        itemBuilder: (context, index) {
          return Card(
            child: Container(
              height: 100,
              width: 100,

              child: Align(
                alignment: Alignment.topCenter,
                child: Image.network(
                  'https://via.placeholder.com/150',
                ),
              ),
            ),
          );
        },
      );
    }
  }
}