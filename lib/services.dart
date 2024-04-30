import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ServicePage()));
}

class ServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Services'),
      ),

      body: ListView(
        children: const [
          ServiceCard(
            title: 'Career Counseling',
          ),
          ServiceCard(
            title: 'Interview Training',
          ),
          ServiceCard(
            title: 'Visa Documentation',
          ),
          ServiceCard(
            title: 'Accommodation',
          ),
          ServiceCard(
            title: 'Language Training',
          ),
          ServiceCard(
            title: 'Pre-Departure Briefing',
          ),
          ServiceCard(
            title: 'Placement Support',
          ),
          ServiceCard(
            title: 'Bank Loan Assistance',
          ),
          ServiceCard(
            title: 'University and Course Selection',
          ),
          ServiceCard(
            title: 'Scholarship Assistance',
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;

  const ServiceCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}