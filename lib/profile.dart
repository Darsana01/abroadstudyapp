import 'package:abroad/home_abroad.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom nav.dart';


void main() {
  runApp(const MaterialApp(home: profile(), debugShowCheckedModeBanner: false));
}

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          child: Column(
              children: [
                const SizedBox(height: 60,),
                const Text("Your Profile",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                const Padding(padding: EdgeInsets.all(40.0)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: const TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color:Colors.red)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.red)),),
                    style:const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Qualification',
                      labelStyle: const TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color:Colors.red)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.red)),),
                    style:const TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email Id',
                      labelStyle: const TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color:Colors.red)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.red)),),
                    style:const TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color:Colors.red)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.red)),),
                    style:const TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'State',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color:Colors.red)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.red)),),
                    style:const TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [Colors.red, Colors.black],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),

                    child:  ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>bottom_nav()));
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text("Done",style: TextStyle(color: Colors.white,fontSize: 20),))
                ),
              ]),
        ));

  }
}