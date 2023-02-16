import 'dart:async';
import 'package:flight_booking_app/insta_login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Splash Screen',
	theme: ThemeData(
		primarySwatch: Colors.blue,
	),
	home: Splash2(),
	debugShowCheckedModeBanner: false,
	);
}
}
class Splash2 extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return SplashScreen(
	seconds: 10,
	navigateAfterSeconds: new SecondScreen(),
	image: Image.asset('assets/images/logo.png'),
	loadingText: Text("Loading"),
	photoSize: 100.0,
	loaderColor: Colors.blue,
	);
}
}
class SecondScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Login',
      theme: ThemeData(
        primaryColor: Colors.lightBlue[800],
      ),
      home: InstaLogin(),
      debugShowCheckedModeBanner: false,
     );
  }
}

