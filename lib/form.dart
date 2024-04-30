import 'package:flutter/material.dart';

void main() {
  runApp(Abroad_form());
}

class Abroad_form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration Form',
      theme: ThemeData(

      ),
      home: RegistrationForm(),debugShowCheckedModeBanner: false,
    );
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  String _firstName = '';
  String _lastName = '';
  String _studentPhoneNumber = '';
  String _parentPhoneNumber = '';
  String _email = '';
  String _location = '';
  String _lastQualification = '';
  String _preferredCourse = '';
  String _preferredCountry = '';
  String _level = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Registration Form')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: 'First Name'),
                onChanged: (value) {
                  _firstName = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Last Name'),
                onChanged: (value) {
                  _lastName = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Student Phone Number'),
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  _studentPhoneNumber = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  _email = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Location'),
                onChanged: (value) {
                  _location = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Last Qualification'),
                onChanged: (value) {
                  _lastQualification = value;
                },
              ),
              TextFormField(
                decoration:const InputDecoration(labelText: 'Preferred Course'),
                onChanged: (value) {
                  _preferredCourse = value;
                },
              ),
              TextFormField(
                decoration:const InputDecoration(labelText: 'Preferred Country'),
                onChanged: (value) {
                  _preferredCountry = value;
                },
              ),
              TextFormField(
                decoration:const InputDecoration(labelText: 'Level'),
                onChanged: (value) {
                  _level = value;
                },
              ),
              const SizedBox(height: 20),
              Container(
                width:400,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient:const LinearGradient(
                    colors: [Colors.red, Colors.black],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: ElevatedButton(onPressed: (){if (_formKey.currentState!.validate()){
                  print('First Name: $_firstName');
                  print('Last Name: $_lastName');
                  print('Student Phone Number: $_studentPhoneNumber');
                  print('Parent Emergency Contact: $_parentPhoneNumber');
                  print('Email: $_email');
                  print('Location: $_location');
                  print('Last Qualification: $_lastQualification');
                  print('Preferred Course: $_preferredCourse');
                  print('Preferred Country: $_preferredCountry');
                  print('Level: $_level');
                }
                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                    child:const Text("Submit", style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              )],
          ),
        ),
      ),
    );
  }
}
