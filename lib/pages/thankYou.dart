// ignore_for_file: prefer_const_constructors

import 'package:flight_booking_app/pages/home.dart';
import 'package:flight_booking_app/pages/tickets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ThankYouPage extends StatefulWidget {
  const ThankYouPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ThankYouPage> createState() => _ThankYouPageState();
}

Color themeColor = Colors.blue;

class _ThankYouPageState extends State<ThankYouPage> {
  double screenWidth = 600;
  double screenHeight = 400;
  Color textColor = const Color(0xFF32567A);

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 170,
              padding: EdgeInsets.all(35),
              decoration: BoxDecoration(
                color: themeColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/card.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "ສໍາເລັດແລ້ວ!",
              style: TextStyle(
                color: themeColor,
                fontWeight: FontWeight.w600,
                fontSize: 36,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              "ຂອບໃຈທີ່ໃຊ້ບໍລິການພວກເຮົາ",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          ElevatedButton(
          child: const Text('ຂໍ້ມູນປີ້ຍົນ'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Tickets()),
            );
          },
              ),
          ElevatedButton(
          child: const Text('ກັບໄປທີ່ໜ້າຫຼັກ'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
              ),
            ],
            
            )
          ],
        ),
        
      ),
    );
  }
}