import 'package:abroad/abroad_countries.dart';
import 'package:abroad/form.dart';
import 'package:abroad/login.dart';
import 'package:abroad/services.dart';
import 'package:abroad/settings.dart';
import 'package:abroad/university.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../abroad_intakes.dart';
import '../abroad_levels.dart';

void main() {
  runApp(MaterialApp(home: homeabroad(), debugShowCheckedModeBanner: false,));
}

class homeabroad extends StatefulWidget {
  homeabroad({super.key});

  @override
  State<homeabroad> createState() => _HomeAbroadState();
}

class _HomeAbroadState extends State<homeabroad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("App name",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  Text("Dare to dream")
                ],
              )
            ),

            ListTile(
              title:const Text('Form'),
              onTap: () {

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Abroad_form()));

              },
            ),
            ListTile(
              title:const Text('Services'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ServicePage()));  

              },
            ),
           ListTile(
             title:const Text('Settings'),
             onTap: (){
               
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Settings()));
             },
           ),
            ListTile(
              title:const Text('Exit'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>homeabroad()));
              },
            ),
            ListTile(
              title:const Text('Logout'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/res1.png"),
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 1,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayCurve: Curves.easeInOutCubicEmphasized,
                enlargeCenterPage: true,
                enlargeFactor: 1,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 120,
                  child: Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: const Icon(
                          FontAwesomeIcons.globe,
                          size: 50,
                          color: Colors.grey,
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Abroad_countries(),
                                  ));
                                },
                                child: const Text(
                                  "Countries",
                                  style: TextStyle(color: Color.fromARGB(168, 255, 0, 0)),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Color.fromARGB(168, 255, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 120,
                  child: Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: const Icon(
                          FontAwesomeIcons.school,
                          size: 50,
                          color: Colors.grey,
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => University(),
                                  ));
                                },
                                child: const Text(
                                  "Universities",
                                  style: TextStyle(color: Color.fromARGB(168, 255, 0, 0)),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Color.fromARGB(168, 255, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 120,
                  child: Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: const Icon(
                          FontAwesomeIcons.indent,
                          size: 50,
                          color: Colors.grey,
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Abroad_intakes(),
                                  ));
                                },
                                child: const Text(
                                  "Intakes",
                                  style: TextStyle(color: Color.fromARGB(168, 255, 0, 0)),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Color.fromARGB(168, 255, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 120,
                  child: Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: const Icon(
                          FontAwesomeIcons.userGraduate,
                          size: 50,
                          color: Colors.grey,
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Abroad_levels(),
                                  ));
                                },
                                child: const Text(
                                  "Levels",
                                  style: TextStyle(color: Color.fromARGB(168, 255, 0, 0)),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Color.fromARGB(168, 255, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
