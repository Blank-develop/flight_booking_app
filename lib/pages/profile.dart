
import 'package:flight_booking_app/pages/profile1.dart';
import 'package:flight_booking_app/pages/profile2.dart';
import 'package:flight_booking_app/pages/profile3.dart';
import 'package:flight_booking_app/pages/profile4.dart';
import 'package:flight_booking_app/pages/profile5.dart';
import 'package:flutter/material.dart';
import '../utils/styles.dart';
import '../widgets/custom_divider.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ທີມງານຜູ້ພັດທະນາ"),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Text(
              "ອາຈານນໍາພາ:",
              style: TextStyle(
                  color: Colors.transparent,
                  shadows: [Shadow(offset: Offset(0, -8), color: Colors.black)],
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fvte2-3.fna.fbcdn.net/v/t39.30808-6/314696938_5991115640939036_7643876358131006955_n.jpg?stp=cp6_dst-jpg&_nc_cat=103&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHUWZmPlMuhe2SG0GFx5d6mA4tiNuZ49P8Di2I25nj0_18H6voTcSemvyYt9ExIQNVuats2guiLaeOyF9Zerxtv&_nc_ohc=H0TyWuAkmxYAX9sdP-m&_nc_ht=scontent.fvte2-3.fna&oh=00_AfC9qq5iatbk5p2GPMSQR8JNT859FZAami7RI7v9vCjBxA&oe=63E847AB"),
                radius: 25,
              ),
              title: Text(
                'ອາຈານ ສະຫວາດ ໄຊປະດິດ',
                style: TextStyle(
                  color: Colors.black,
                ),
                textScaleFactor: 1.3,
              ),
              trailing: IconButton(
            icon: const Icon(Icons.navigate_next),
            color: Colors.blue,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage1()),
            );
            },
          ),
              subtitle: Text(
                'ອາຈານນໍາພາ',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              selected: true,
            ),
            SizedBox(height: 20,),
            Text(
              "ນັກສຶກສາ:",
              style: TextStyle(
                  color: Colors.transparent,
                  shadows: [Shadow(offset: Offset(0, -8), color: Colors.black)],
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fvte2-2.fna.fbcdn.net/v/t1.6435-9/107092524_848767078981943_510280806668575441_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHerH-QE_D52OJaCNDc3yMoD3nQm0fBmooPedCbR8Gaik-3x6cszjxTjF3w_9s_NyHLtD44tpasvSo2S5axMdv7&_nc_ohc=pMdsJBLshrcAX9AlzkM&_nc_oc=AQndS_WOcxejKHTOLuc046lAXH2Nwns62pRo0Ftl2-frweapg1CeiBpmNgMY585Av7U&_nc_ht=scontent.fvte2-2.fna&oh=00_AfBdp-YclmnTGhky-zi-WXf2dhTSuiR8-cZxcXZWFkETgg&oe=640A7192"),
                radius: 25,
              ),
              title: Text(
                'ສີສົມພອນ ຈັນສະແຫວງ',
                style: TextStyle(
                  color: Colors.black,
                ),
                textScaleFactor: 1.3,
              ),
              trailing: IconButton(
            icon: const Icon(Icons.navigate_next),
            color: Colors.blue,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage2()),
            );
            },
          ),
              subtitle: Text('UX/UI Designer',
              style: TextStyle(
                  color: Colors.black,
                ),
              ),
              selected: true,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fvte2-2.fna.fbcdn.net/v/t39.30808-6/314943007_842113320257323_4446562718495204350_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeES2kT6DPIBM8HrnIhwvBv9uVxcs41pWPG5XFyzjWlY8XgHU1gOaEh6ZPKkWgTqmqNO8eFztENVJAykJXnIOv11&_nc_ohc=t9VslrTHucwAX9nFYhT&_nc_ht=scontent.fvte2-2.fna&oh=00_AfBtabC3gyvEco66BUbXifPhlISR7p2UtZrbX7et8ARVQw&oe=63E85E90"),
                radius: 25,
              ),
              title: Text(
                'ທິບພະຈັນ ແກ້ວສໍມີໄຊ',
                style: TextStyle(
                  color: Colors.black,
                ),
                textScaleFactor: 1.3,
              ),
              trailing: IconButton(
            icon: const Icon(Icons.navigate_next),
            color: Colors.blue,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage3()),
            );
            },
          ),
              subtitle: Text('ຜູ້ປະສານງານ',style: TextStyle(
                  color: Colors.black,
                ),),
              selected: true,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fvte2-2.fna.fbcdn.net/v/t1.18169-9/15590498_1852036171752573_3753573878697235176_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHeCKt8VJTZAppGFilZkFQGOIPeN9oMp2Q4g9432gynZM6-Me2LVauV7hlV6oI1YVycWvrX5L185Bfd9kftWhnb&_nc_ohc=9kZP7tcjOnMAX_R7Kzl&_nc_ht=scontent.fvte2-2.fna&oh=00_AfBm9k_SUQd_AQMzbclxKSEjUpyYZvryxGFj3HXYySoFgg&oe=640A6E88"),
                radius: 25,
              ),
              title: Text(
                'ແມັກແຮ່ມ ບຸນຍາວົງ',
                style: TextStyle(
                  color: Colors.black,
                ),
                textScaleFactor: 1.3,
              ),
              trailing: IconButton(
            icon: const Icon(Icons.navigate_next),
            color: Colors.blue,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage4()),
            );
            },
          ),
              subtitle: Text('ນັກລົງທຶນ',style: TextStyle(
                  color: Colors.black,
                ),),
              selected: true,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fvte2-3.fna.fbcdn.net/v/t39.30808-6/326886873_1426321724782495_4354814243981283672_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE3ET_Q9yM3iSF_cDkUI9k_NpleJb4gYd82mV4lviBh3y1Jqwf00yz87MewprotEjljw-0iRZOda-I73B2pCZra&_nc_ohc=Se-BcrD9XsYAX-qjHAL&tn=cR79auS_aEqx3j9p&_nc_ht=scontent.fvte2-3.fna&oh=00_AfAQRLkk6YsAMplqp11xv_fnpaeO8oIDhI8UOu4cgRrcQg&oe=63E75161"),
                radius: 25,
              ),
              title: Text(
                'ຈິລະຢຸດ ນິດວົງໄຂ',
                style: TextStyle(
                  color: Colors.black,
                ),
                textScaleFactor: 1.3,
              ),
              trailing: IconButton(
            icon: const Icon(Icons.navigate_next),
            color: Colors.blue,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage5()),
            );
            },
          ),
              subtitle: Text('ນັກຂຽນໂປຣແກມ',style: TextStyle(
                  color: Colors.black,
                ),),
              selected: true,
            ),
          ],
        ));
  }
}
