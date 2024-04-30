import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_abroad.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(home: RegistrationPage(), debugShowCheckedModeBanner: false));
}

class RegistrationPage extends StatelessWidget {
  RegistrationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState>  _formKey = GlobalKey<FormState>();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmPasswordController = TextEditingController();

    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(height: 15,),
            const Text("Register here..", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Padding(padding: EdgeInsets.all(40.0)),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText:'Name',
                  labelStyle:const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:const BorderSide(color: Colors.red),
                  ),
                  focusedBorder:const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                style:const TextStyle(color: Colors.black),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter your name';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone number',
                  labelStyle:const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:const BorderSide(color: Colors.red),
                  ),
                  focusedBorder:const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                style:const TextStyle(color: Colors.black),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Email id / phone number ';
                  }
                  return null;
                },
              ),
            ),

            const SizedBox(height: 15,),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText:'Password',
                  labelStyle:const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:const BorderSide(color: Colors.red),
                  ),
                  focusedBorder:const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                style:const TextStyle(color: Colors.black),
                obscureText: true,
                obscuringCharacter: '*',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  labelText:'Confirm Password',
                  labelStyle:const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  focusedBorder:const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                style:const TextStyle(color: Colors.black),
                obscureText: true,
                obscuringCharacter: '*',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  } else if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
            ),
             const SizedBox(height: 40,),
            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient:const LinearGradient(
                  colors: [Colors.red, Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LoginPage()));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child:const Text("Register",style: TextStyle(color:Colors.white,fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
