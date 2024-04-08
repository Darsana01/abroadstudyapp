import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Abroad_levels(),
    debugShowCheckedModeBanner: false,
  ));
}

class Abroad_levels extends StatelessWidget {
  final List<Map<String, String>> tileData = [
    {
      'title': 'MBA',
    },
    {
      'title': 'COMPUTER SCIENCE',
    },
    {
      'title': 'BIOMEDICAL',
    },
    {
      'title': 'INTERNATIONAL BUSINESS MANAGEMENT ',
    },
    {
      'title':'INFORMATION SYSTEMS'
    },
    {
      'title':'BUSINESS ANALYTICS'
    },
    {
      'title':'DATA ANALYTICS'
    },
    {
      'title':'SUPPLY CHAIN'
    },
    {
      'title':'HOTEL MANAGEMENT'
    },
    {
      'title':'BIO TECH'
    },
    {
      'title':'PUBLIC HEALTH'
    },
    {
      'title':'MARKETING'
    },
    {
      'title':'DIGITAL MARKETING'
    },
    {
      'title':'ADVERTICING'
    },
    {
      'title':'ENGINEERING MANAGEMENT'
    },
    {
      'title':'PROJECT MANAGEMENT'
    },
    {
      'title':'CONSTRUCTION MANAGEMENT'
    },
    {
      'title':'MECHANICAL ENGINEERING'
    },
    {
      'title':'CYBERSECURITY'
    },
    {
      'title':'HEALTHCARE MANAGEMENT'
    },
    {
      'title':'ACCOUNTING'
    },
    {
      'title':'FINANCE'
    },
    {
      'title':'MANAGEMENT'
    },
    {
      'title':'INFORMATION TECHNOLOGY'
    },
    {
      'title':'DATA SCIENCE AND ANALYTICS'
    },
    {
      'title':'MBA/BUSSINESS ADMINISTRATION'
    },
    {
      'title':'BIO MED/TECH'
    },
    {
      'title':'HEALTHCARE'
    },
    {
      'title':'MECHANICAL ENGINEERING'
    },
    {
      'title':'MSC CLINICAL PHARMACY'
    },
    {
      'title':'MOBILE DEVELOPMENT'
    },
    {
      'title':'DESIGN'
    },
    {
      'title':'BUSSINESS MANAGEMENT'
    },
    {
      'title':'HOTEL,TOURISM AND HOSPITALITY MANAGEMENT'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: tileData.length,
        itemBuilder: (context, index) {
          return ExpansionTileCard(tileData[index]['title']!);
        },
      ),
    );
  }
}

class ExpansionTileCard extends StatelessWidget {
  final String title;

  ExpansionTileCard(this.title);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(title),
        children: [
          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Intake'),
          ),
          ListTile(
            leading: Icon(Icons.attach_money_sharp),
            title: Text('€'),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('country'),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\n BACHELOR DEGREE'),
                Text('\n DOCTORAL PhD'),
                Text('\n INTEGRATED MASTERS DEGREE'),
                Text('\n MASTER DEGREE'),
                Text('\n PATHWAY PROGRAM/FOUNDATION PROGRAM'),
                Text('\n POST GRADUATE CERTIFICATE'),
                Text('\n POST GRADUATE DIPLOMA'),
                Text('\n SHORT TERM COURSES'),
                Text('\n UNDERGRADUATE CERTIFICATE'),
                Text('\n UNDERGRADUATE DIPLOMA'),
              ],
            ),
          )
        ],
      ),
    );
  }
}