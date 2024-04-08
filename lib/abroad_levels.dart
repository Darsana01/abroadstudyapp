
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Abroad_levels(),
    debugShowCheckedModeBanner: false,
  ));
}

class Abroad_levels extends StatefulWidget {
  @override
  _AbroadLevelsState createState() => _AbroadLevelsState();
}

class _AbroadLevelsState extends State<Abroad_levels> {
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

  List<Map<String, String>> filteredData = [];

  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredData = tileData;
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    String searchTerm = _searchController.text.toLowerCase();
    setState(() {
      filteredData = tileData.where((tile) {
        return tile['title']!.toLowerCase().contains(searchTerm);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search..',
            hintStyle: TextStyle(color: Colors.black),
            border: InputBorder.none,
          ),
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              setState(() {
                _searchController.clear();
                filteredData = tileData;
              });
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: filteredData.length,
        itemBuilder: (context, index) {
          return ExpansionTileCard(filteredData[index]['title']!);
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
