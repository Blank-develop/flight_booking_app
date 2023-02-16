import 'package:flight_booking_app/pages/flight_info.dart';
import 'package:flutter/material.dart';
import '../json/flight_list.dart';
class Buy extends StatelessWidget {
  const Buy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ຊອກຫາຖ້ຽວບິນຂອງທ່ານ'),
        automaticallyImplyLeading: false,
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SearchPage())),
              icon: const Icon(Icons.search))
        ],
      ),
         body: ListView.separated( // <-- SEE HERE
  itemCount: flightList.length,
  itemBuilder: (BuildContext context, int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
      ),
      title: Text('${flightList[index]['name']}'), 
      subtitle: Text('${flightList[index]['airline']}'),
      trailing: IconButton(
            icon: const Icon(Icons.payment),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FlightInfo()),
            );
            },
          ),
    );
  },
  separatorBuilder: (context, index) { // <-- SEE HERE
    return Divider();
  },
)

    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // The search area here
          title: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    /* Clear the search field */
                  },
                ),
                hintText: 'Search...',
                border: InputBorder.none),
          ),
        ),
      )),
   body: ListView.separated( // <-- SEE HERE
  itemCount: flightList.length,
  itemBuilder: (BuildContext context, int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('/assets/images/LaoAirlineslogo.svg.png'),
      ),
      title: Text('${flightList[index]['name']}'), 
      subtitle: Text('${flightList[index]['airline']}'),
      trailing: IconButton(
            icon: const Icon(Icons.payment),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FlightInfo()),
            );
            },
          ),
    );
  },
  separatorBuilder: (context, index) { // <-- SEE HERE
    return Divider();
  },
)

    );
  }
}