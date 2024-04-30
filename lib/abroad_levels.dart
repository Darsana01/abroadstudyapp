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
  final List<Map<String, dynamic>> tileData = [
    {
      'title': 'MBA',
      'Intake':'May/July/May/Sept',
      'country': 'Canda/Uk/Australia/Germany/France/Ireland/Italy',

    },
    {
      'title': 'COMPUTER SCIENCE',
      'Intake':'May,July,May,Sept',
      'country': 'USA/UK',

    },
    {
      'title': 'BIOMEDICAL',
      'Intake':'May,July,May,Sept',
      'country': 'Australia',

    },
    {
      'title': 'INTERNATIONAL BUSINESS MANAGEMENT',
      'Intake':'May,July,May,Sept',
      'country': 'LATVIA',

    },
    {
      'title': 'INFORMATION SYSTEMS',
      'Intake':'May,July,May,Sept',
      'country': 'LITHUANIA',

    },
    {
      'title': 'BUSINESS ANALYTICS',
      'Intake':'May,July,May,Sept',
      'country': 'SLOVAKIA',

    },

    {
      'title': 'DATA ANALYTICS',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'SUPPLY CHAIN',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'HOTEL MANAGEMENT',
      'Intake':'May,July,May,Sept',
      'country': '',


    },
    {
      'title': 'BIO TECH',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'PUBLIC HEALTH',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'MARKETING',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'DIGITAL MARKETING',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'ADVERTISING',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'ENGINEERING MANAGEMENT',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'PROJECT MANAGEMENT',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'CONSTRUCTION MANAGEMENT',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'MECHANICAL ENGINEERING',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'CYBERSECURITY',
      'Intake':'May,July,May,Sept',
      'country': '',

    },

    {
      'title': 'HEALTHCARE MANAGEMENT',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'ACCOUNTING',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'FINANCE',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'MANAGEMENT',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'INFORMATION TECHNOLOGY',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'DATA SCIENCE AND ANALYTICS',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'MBA/BUSSINESS ADMINISTRATION',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'BIO MED/TECH',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'HEALTHCARE',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'MECHANICAL ENGINEERING',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'MSC CLINICAL PHARMACY',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
    {
      'title': 'MOBILE DEVELOPMENT',
      'Intake':'May,July,May,Sept',
      'country': '',
    },

    {
      'title': 'BUSSINESS MANAGEMENT',
      'Intake':'May,July,May,Sept',
      'country': '',
    },
    {
      'title': 'HOTEL,TOURISM AND HOSPITALITY MANAGEMENT',
      'Intake':'May,July,May,Sept',
      'country': '',

    },
  ];

  List<Map<String, dynamic>> filteredData = [];
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
          decoration: const InputDecoration(
            hintText: 'Search..',
            hintStyle: TextStyle(color: Colors.black),
            border: InputBorder.none,
          ),
          style: const TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.clear),
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
          return ExpansionTileCard(
            title: filteredData[index]['title']!,
            Intake:filteredData[index]['Intake']!,
            country: filteredData[index]['country']!,

          );
        },
      ),
    );
  }
}

class ExpansionTileCard extends StatelessWidget {
  final String title;
  final String Intake;
  final String country;

  ExpansionTileCard({
    required this.title,
    required this.Intake,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(title),
        children: [
          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text(Intake),
          ),

          ListTile(
            leading: Icon(Icons.location_on),
            title: Text(country),
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
