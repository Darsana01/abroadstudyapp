import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Abroad_countries(),));
}

class Abroad_countries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'UK',
      'image':
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV7IA-PfjRF4PBJjUSdbn5mk9BoZM02Kx3SatXHrUiRwBG6ribqmrPaLpT8IcVLHxOx4A&usqp=CAU",
    },
    {
      'name': 'CANADA',
      'image':
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7E0IGWAszPh_SzC6PhbPPfVwUaRGG72rdMQ&usqp=CAU",
    },
    {
      'name': 'LATVIA',
      'image':
      "https://www.trafalgar.com/real-word/wp-content/uploads/sites/3/2015/09/riga-latvia-cityscape-in-sunny-summer-day-famous-PY9RNEW-1.jpg",
    },
    {
      'name': 'LITHUANIA',
      'image':
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3EJ_5AqtbR13WBTrUQDyw-NJ0VmNQ36QVh3_lBjLp1N_3BiXMe83qAOBzXr1Gri-qzrY&usqp=CAU",
    },
    {
      'name': 'SLOVAKIA ',
      'image':
      "https://www.thediaryofanomad.com/wp-content/uploads/2021/02/best-places-to-visit-in-slovakia-50.jpg",
    },
    {
      'name': 'SLOVENIA ',
      'image':
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiw3cnhx2VBs2gqWROBpJoVvN18c6Xq-4DmVDYeBMk-xA45g6SHV7Cf77IoV9aO2i2Y3s&usqp=CAU",
    },
    {
      'name': 'POLAND ',
      'image':
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSc9fITKRdA2lqYdBN6e5PODP2AwvahMecKjw&usqp=CAU",
    },
    {
      'name': 'CZECH REPUBLIC',
      'image':
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWLyqZHNBmXPUrBQU07talBulazzbhNRbnM1HyqADHmLjnjttVopgSik5Y5uVVApIgzHk&usqp=CAU",
    },
    {
      'name': 'FINLAND',
      'image':
      "https://cdn1.matadornetwork.com/blogs/1/2011/05/Amsterdam-Netherlands-cityscape-canals-waterfront-destinations-1200x900.jpg",
    },
    {
      'name': 'NETHERLANDS ',
      'image':
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxC5PtYR0ee6UkW7LYRDgoobCXvK_UVPTgYA&usqp=CAU",
    },
    {
      'name': 'GERMANY ',
      'image':
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8wUvSco7nDQZ93I9MIL84FWdwQwyoKvbooA&usqp=CAU",
    },
    {
      'name': 'ITALY',
      'image':
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4MbzCpHNPYzJzzE3D-wIy4CfqMUVe79VjHg&usqp=CAU",
    },
    {
      'name': 'FRANCE ',
      'image':
      "https://www.state.gov/wp-content/uploads/2023/07/shutterstock_667548661v2.jpg"
    },
    {
      'name': 'SPAIN ',
      'image':
      "https://images.goabroad.com/image/upload/images2/program_content/1-1612106365.jpg",
    },
    {
      'name': 'HUNGARY ',
      'image':
      "https://media1.thrillophilia.com/filestore/cwwz812x9q2kw19pwod1xi62blzi_shutterstock_562412311.jpg?w=400&dpr=2"
    },
    {
      'name': 'CROATIA ',
      'image':
      "https://www.croatiatravelco.com/wp-content/uploads/2014/02/Rovinj.foto_.yachtsngulets.com_.jpg"
    },
    {
      'name': 'BELGIUM ',
      'image':
      "https://lp-cms-production.imgix.net/2022-05/GettyRF_597070535.jpg?auto=format&w=1920&h=640&fit=crop&crop=faces,edges&q=75"
    },
    {
      'name': 'MALTA ',
      'image':
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScvwaikQ0sLzhz1IKAkQA4GBkfKZwbjT0y8yIXCR-dDEuT1bkttXGqOhJzpfQwxBNBIUU&usqp=CAU",
    },
    {
      'name': 'SWEDEN',
      'image':
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5Sv97PamISooC4tqu0DeGGcoMIoObUYnwrg&usqp=CAU",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Countries")),
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 9.8,
              mainAxisSpacing: 9.8,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GridTile(
                  child:Image.network(
                    items[index] ['image'],
                    fit: BoxFit.cover,
                  ),
                  footer: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text(
                        items[index]['name'],
                        textAlign: TextAlign.center,
                      )));
            }));
  }}
