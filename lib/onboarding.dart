import 'package:abroad/page1.dart';
import 'package:abroad/page2.dart';
import 'package:abroad/page3.dart';
import 'package:abroad/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onboarding_animation/onboarding_animation.dart';

void main() {
runApp(MaterialApp(
debugShowCheckedModeBanner: false,
home: onboarding(),
));
}

class onboarding extends StatefulWidget {
@override
State<onboarding> createState() => _HomePageState();
}

class _HomePageState extends State<onboarding> {
final _controller = PageController();
int pageIndex = 0;
int skipCounter = 0;
int nextCounter = 0;
List<Widget> pages = [
page1(),
page2(),
page3(),
];

@override
Widget build(BuildContext context) {
return Scaffold(
body: Container(
decoration: const BoxDecoration(
gradient: LinearGradient(
colors: [Color(0x61939191), Colors.white, Colors.white],
begin: Alignment.topCenter,
end: Alignment.bottomCenter)),
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Container(height: 60),
// page view
Expanded(
child: PageView.builder(
itemCount: pages.length,
controller: _controller,
onPageChanged: (value) {
setState(() {
pageIndex = value;
});
},
itemBuilder: (context, index) {
return pages[index];
},
),
),
// dot indicators
SmoothPageIndicator(
controller: _controller,
count: 3,
effect: const ExpandingDotsEffect(
activeDotColor: Color.fromARGB(255, 253, 48, 48),
dotColor: Color.fromARGB(170, 110, 110, 110),
dotHeight: 8,
dotWidth: 8,
spacing: 4,
),
),
const SizedBox(
height: 12,
),
Text(
pageIndex == 0
? "Welcome"
    : pageIndex == 1
? "Get Started"
    : pageIndex == 2
? "Explore"
    : "",
style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
),
const SizedBox(
height: 12,
),
const Text("Embark on a journey of knowledge, culture, and discovery",
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 14,
fontWeight: FontWeight.w600,
color: Color.fromARGB(255, 135, 135, 135)),
),
const SizedBox(
height: 60,
),
Padding(
padding: const EdgeInsets.symmetric(horizontal: 22.0),
child: Row(
children: [
TextButton(
onPressed: () {
if (skipCounter < 0) {
_controller.nextPage(
duration: const Duration(milliseconds: 350),
curve: Curves.easeInOut);
skipCounter++;
} else {
Navigator.of(context).push(MaterialPageRoute(
builder: (context) => splash_screen()));
}
},
child: const Text(
"Skip",
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.w800,
color: Color.fromARGB(255, 151, 151, 151)),
),
),
const Spacer(),
GestureDetector(
onTap: () {
if (nextCounter < 2) {
_controller.nextPage(
duration:const Duration(milliseconds: 350),
curve: Curves.easeInOut);
nextCounter++;
} else {
Navigator.of(context).push(MaterialPageRoute(
builder: (context) => splash_screen ()));
}
},
child: const Text(
"Next >",
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.w800,
color: Color.fromARGB(168, 255, 0, 0)),
),
),
],
),
),
const SizedBox(
height: 30,
),
],
),
),
);
}
}