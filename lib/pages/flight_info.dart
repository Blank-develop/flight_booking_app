import 'package:flight_booking_app/pages/ticket_info.dart';
import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../widgets/custom_divider.dart';

class FlightInfo extends StatelessWidget {
  const FlightInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ໜ້າລາຍລະອຽດປີ້ຍົນ"),
      ),
      body: Column(
        children: [
          Container(
  height: 100,
  width: double.infinity,
  decoration: const BoxDecoration(
    image: DecorationImage(
            image: NetworkImage("https://a.cdn-hotels.com/gdcs/production172/d459/3af9262b-3d8b-40c6-b61d-e37ae1aa90aa.jpg"),
            fit: BoxFit.cover),
  ),
),
SizedBox(height: 20,),
          Text('ລາຍລະອຽດຖ້ຽວບິນ', style: Styles.headline2Style,),
          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1
                )
              ],
            ),
            child: Column(
              children: [
               SizedBox(height: 10,),
                Text('ລາຄາ: 150 USD', style: TextStyle(fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600),),
               SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Type', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                    Text('Business class', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                  ],
                ),
                SizedBox(height: 4,),
                Divider(color: Colors.grey.shade300,),
                SizedBox(height: 4,),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ເວລາຍົນອອກ', style: Styles.headline3Style),
                         SizedBox(height: 5,),
                        Text('Departure time', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('16:15', style: Styles.headline3Style),
                        SizedBox(height: 5,),
                        Text('', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
               SizedBox(height: 12,),
                customDivider(),
               SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ເວລາເຖິງຈຸດໝາຍ', style: Styles.headline3Style),
                      SizedBox(height: 5,),
                        Text('arrival time', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('17:00', style: Styles.headline3Style),
                       SizedBox(height: 5,),
                        Text('', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
                 SizedBox(height: 15,),
                customDivider(), 
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ນໍ້າໜັກກະເປົາ', style: Styles.headline3Style),
                       SizedBox(height: 5,),
                        Text('Maximum', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('30', style: Styles.headline3Style),
                       SizedBox(height: 5,),
                        Text('Thirty', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                customDivider(), 
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ວັນທີ່ອອກເດີນທາງ', style: Styles.headline3Style),
                       SizedBox(height: 5,),
                        Text('Date', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('22/3/2023', style: Styles.headline3Style),
                       SizedBox(height: 5,),
                        Text('22 March 2023', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 25,),
                InkWell(
                  child: Center(
        child: ElevatedButton(
          child: const Text('ຊື້ປີ້ຍົນ'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TicketInfo()),
            );
          },
        ),
      ),
    
                ),

              ],
            ),
          )
        ],
      )
    );
  }
}