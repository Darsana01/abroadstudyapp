
import 'package:abroad/profile.dart';
import 'package:abroad/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_abroad.dart';
void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: bottom_nav(),));
}
class bottom_nav extends StatefulWidget{
  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {

  int index =0;
  var Screens=[
    homeabroad(),
    profile(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
        },
        currentIndex: index,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(backgroundColor: Colors.white,
              icon: Icon(Icons.home,color: Colors.grey),
              label: "Home"),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.account_circle,color: Colors.grey,),
              label: "profile"),
          BottomNavigationBarItem(backgroundColor: Colors.white,
              icon: Icon(Icons.settings,color: Colors.grey,),
              label: "Settings"),

        ],
      ),
      body: Screens[index],
    );
  }
}