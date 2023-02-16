import 'package:flight_booking_app/json/place_list.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../json/hotel_list.dart';
import '../utils/styles.dart';
import '../widgets/hotel_view.dart';
import '../widgets/ticket_view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
              
         SizedBox(height: 20,),
          CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("./assets/images/wayha.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('./assets/images/bcel.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("./assets/images/beerlao.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('./assets/images/khamphouvong.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ], 
        options: CarouselOptions(
            height: 280.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 5,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 1,
          ),
        ),
                                            Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ສະບາຍດີຕອນເຊົ້າ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey.shade500),),
                        SizedBox(height: 10,),
                        Text('HongThong', style: Styles.headline1Style,)
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF37B67),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/images/dash.png'),
                    ),
                    
                  ],
                ),
                SizedBox(height: 15,),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Color(0xFFBFC2D5)),
                      SizedBox(height: 5,),
                      Text('ຄົ້ນຫາ', style: TextStyle(color: Colors.grey.shade500, fontSize: 15, fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
               SizedBox(height: 25,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Upcoming Flights', style: Styles.headline2Style,),
                    InkWell(
                      child: Text('View all', style: Styles.textStyle.copyWith(color: Styles.primaryColor),),
                    )
                  ],
                ),
                SizedBox(height: 10,),
              ],
            )
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                TicketView(isOrange: true,),
                TicketView(isOrange: true,),
              ],
            )
          ),
          SizedBox(height: 15,),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ສະຖານທີ່ແນະນໍາ', style: Styles.headline2Style,),
                  InkWell(
                    child: Text('ເບິ່ງທັງໝົດ', style: Styles.textStyle.copyWith(color: Styles.primaryColor),),
                  )
                ],
              )
          ),
          SizedBox(height: 15,),
          SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: placeList.map<Widget>((hotel) => HotelView(hotel: hotel)).toList()
              )
          ),SizedBox(height: 25,),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hotels', style: Styles.headline2Style,),
                  InkWell(
                    child: Text('View all', style: Styles.textStyle.copyWith(color: Styles.primaryColor),),
                  )
                ],
              )
          ),
          SizedBox(height: 15,),
          SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList.map<Widget>((hotel) => HotelView(hotel: hotel)).toList()
              )
          ),
        ],
      ),
    );
  }
}