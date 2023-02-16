import 'package:flight_booking_app/pages/payment.dart';
import 'package:flight_booking_app/pages/thankYou.dart';
import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:splashscreen/splashscreen.dart';

import '../utils/layouts.dart';
import '../utils/styles.dart';
import '../widgets/ticket_view.dart'; 

class TicketInfo extends StatelessWidget {
  const TicketInfo({super.key});

  @override
  Widget build(BuildContext context) {
    int simpleIntInput = 0;
    final size = Layouts.getSize(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("ລົງທະບຽນ"),
      ),
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'ປ້ອນຊື່ແທ້ຂອງທ່ານ',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'ປ້ອນນາມສະກຸນຂອງທ່ານ',
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Text("ຈໍານວນຜູ້ໂດຍສານ:"),
         ),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: NumberInputWithIncrementDecrement(
      controller: TextEditingController(),
      widgetContainerDecoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
        ),
      ),
    ),
         ),
         TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('ຢືນຢັນອີກຄັ້ງ'),
          content: const Text('ທ່ານບໍ່ຕ້ອງການປ່ຽນແປງຫຍັງຕື່ມແລ້ວບໍ່?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('ຍົກເລີກ'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'ຕົກລົງ'),
              child:  ElevatedButton(
          child: const Text('ຕົກລົງ'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Payment()),
            );
          }
            ))
          ],
        ),
      ),
      child: const Text('ຢືນຢັນເພື່ອຈ່າຍເງິນ'),
    )
    ],
      )
    );
  }
}

class ConfirmPayment extends StatelessWidget {
  const ConfirmPayment({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Layouts.getSize(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Payment"),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 1,
                                spreadRadius: 1
                            )
                          ],
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(22),topRight: Radius.circular(22))
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('NYC', style: Styles.headline3Style),
                              SizedBox(height: 65,),
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0xFF8ACCF7), width: 2.5),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Stack(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 24,
                                        child: LayoutBuilder(builder: (context,constraints){
                                          return Flex(
                                            children: List.generate((constraints.constrainWidth()/6).floor(), (index) =>
                                                SizedBox(height: 1,width: 3,child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey.shade300),),)
                                            ),
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          );
                                        },),
                                      ),
                                      Center(child: Transform.rotate(angle: 1.5,child: const Icon(Icons.local_airport_rounded, color: Color(0xFF8ACCF7), size: 24,),))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0xFF8ACCF7), width: 2.5),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              SizedBox(height: 65,),
                              Text('LDN', style: Styles.headline3Style),
                            ],
                          ),
                          SizedBox(height: 1,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(width:100,child: Text('New-York', style: Styles.subtitle1Style)),
                              Text('8H 30M', style: Styles.headline3Style.copyWith(fontWeight: FontWeight.bold)),
                              SizedBox(width:100,child: Text('London',textAlign: TextAlign.end, style: Styles.subtitle1Style)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            height: 24,
                            width: 10,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.horizontal(right: Radius.circular(50)),
                                color: Colors.grey.shade50,

                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: LayoutBuilder(builder: (context,constraints){
                                return Flex(
                                  children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>
                                      SizedBox(height: 1,width: 5,child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey.shade300),),)
                                  ),
                                  direction: Axis.horizontal,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                );
                              },),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                            width: 10,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.horizontal(left: Radius.circular(50)),
                                color: Colors.grey.shade50,

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              offset: const Offset(0, 1),
                              blurRadius: 1,
                              spreadRadius: 0,
                            )
                          ],
                          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(22),bottomRight: Radius.circular(22))
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('1 May', style: Styles.headline3Style),
                                    SizedBox(height: 5,),
                                    Text('Date', style: Styles.subtitle1Style),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('08:00 AM', style: Styles.headline3Style),
                                    SizedBox(height: 5,),
                                    Text('Departure time', style: Styles.subtitle1Style),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('23', style: Styles.headline3Style),
                                    SizedBox(height: 5,),
                                    Text('Number', style: Styles.subtitle1Style),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12.0),
                              child: Divider(color: Colors.grey.shade300,)
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Flutter Dash', style: Styles.headline3Style),
                                        SizedBox(height: 5,),
                                        Text('Passenger', style: Styles.subtitle1Style),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('5221 478566', style: Styles.headline3Style),
                                        SizedBox(height: 5,),
                                        Text('Passport', style: Styles.subtitle1Style),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                                  child: LayoutBuilder(builder: (context,constraints){
                                    return Flex(
                                      children: List.generate((constraints.constrainWidth()/12).floor(), (index) =>
                                          SizedBox(height: 1,width: 5,child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey.shade300),),)
                                      ),
                                      direction: Axis.horizontal,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    );
                                  },),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('0055 444 77147', style: Styles.headline3Style),
                                        SizedBox(height: 5,),
                                        Text('Number of E-ticket', style: Styles.subtitle1Style),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('B2SG28', style: Styles.headline3Style),
                                       SizedBox(height: 5,),
                                        Text('Booking code', style: Styles.subtitle1Style),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                                  child: LayoutBuilder(builder: (context,constraints){
                                    return Flex(
                                      children: List.generate((constraints.constrainWidth()/12).floor(), (index) =>
                                          SizedBox(height: 1,width: 5,child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey.shade300),),)
                                      ),
                                      direction: Axis.horizontal,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    );
                                  },),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset('assets/images/visa.png', scale: 11,),
                                            Text(' *** 2462', style: Styles.headline3Style),
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Text('Payment method', style: Styles.subtitle1Style),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('\$249.99', style: Styles.headline3Style),
                                        SizedBox(height: 5,),
                                        Text('Price', style: Styles.subtitle1Style),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Divider(color: Colors.grey.shade300,)
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              
                            ),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 0),
                child: const TicketView(isOrange: true,)
              ),
          ElevatedButton(
          child: const Text('ຢືນຢັນການຊື້ປີ້'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Splash3()),
            );
          },
          ),

            ],
          ),
          Positioned(
            top: 295,
            left: 19,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                border: Border.all(color: Styles.textColor, width: 2),
               shape: BoxShape.circle
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              )
            ),
          ),
          Positioned(
            top: 295,
            right: 19,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                border: Border.all(color: Styles.textColor, width: 2),
               shape: BoxShape.circle
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              )
            ),
          ),       
           ],
      ),
    );
  }
}

class Splash3 extends StatelessWidget {
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
      home: const ThankYouPage(title: '',),
      debugShowCheckedModeBanner: false,
     );
  }
}
