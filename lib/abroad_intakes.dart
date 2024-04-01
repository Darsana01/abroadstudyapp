import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Abroad_intakes(),
    debugShowCheckedModeBanner: false,
  ));
}

class Abroad_intakes extends StatelessWidget {
  final List<String> months = [
    'January', 'February', 'March', 'April', 'May', 'June', 'July',
    'August', 'September', 'October', 'November', 'December'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: months.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.calendar_today),
                const SizedBox(height: 8.0),
                Text(
                  months[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}