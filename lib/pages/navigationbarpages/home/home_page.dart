import 'package:event_app/pages/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _simulateLoading();
  }

  Future<void> _simulateLoading() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    // Sample list of cities
    List<String> cities = [
      'New York',
      'Los Angeles',
      'Chicago',
      'Houston',
      'Phoenix'
    ];
    String selectedCity = cities[0];

    return Skeletonizer(
      enabled: _isLoading,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: h * 0.06),

              // City dropdown and profile picture
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton<String>(
                      value: selectedCity,
                      icon: const Icon(Icons.arrow_drop_down),
                      style: TextStyle(
                          color: HexColor("0B012E"),
                          fontSize: 18,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.w500),
                      dropdownColor: HexColor("B8A1DC"),
                      underline: SizedBox(),
                      onChanged: (String? newValue) {
                        selectedCity = newValue!;
                      },
                      items:
                          cities.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://i.postimg.cc/cCsYDjvj/user-2.png'),
                    ),
                  ],
                ),
              ),

              // Within 20 miles text
              Padding(
                padding: EdgeInsets.only(left: w * 0.05),
                child: Text(
                  "within 20 miles",
                  style: TextStyle(
                    fontSize: 12,
                    color: HexColor("81769C"),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Hello, Simone text
              Padding(
                padding: EdgeInsets.only(left: w * 0.05),
                child: Text(
                  "Hello, Simone",
                  style: TextStyle(
                    fontSize: 30,
                    color: HexColor("0B012E"),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Almarai",
                  ),
                ),
              ),

              // There are 25 new events text
              Padding(
                padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                child: Text(
                  "There are 25 new events in your area",
                  style: TextStyle(
                    fontSize: 30,
                    color: HexColor("B8A1DC"),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Almarai",
                  ),
                ),
              ),

              SizedBox(height: h * 0.03),

              // Search TextField
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for an event',
                    prefixIcon: Icon(Iconsax.search_normal_1,
                        color: HexColor("B8A1DC")),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: HexColor("B8A1DC")),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: HexColor("B8A1DC")),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: HexColor("B8A1DC")),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),

              SizedBox(height: h * 0.02),

              /////You Might Like text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.05, top: h * 0.03),
                    child: Text(
                      "You might like",
                      style: TextStyle(
                        fontSize: 20,
                        color: HexColor("0B012E"),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Almarai",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: w * 0.05, top: h * 0.03),
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 12,
                        color: HexColor("B8A1DC"),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ],
              ),

              ////Event Cards
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ////Event Card 1
                      EventCard(
                          imageUrl:
                              "https://images.pexels.com/photos/2890387/pexels-photo-2890387.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                          date: "20 NOV",
                          labels: ["Cooking"],
                          title: "Cooking with Amanda",
                          time: "10:00pm - 11pm"),

                      SizedBox(width: w * 0.05),

                      ////Event Card 2
                      EventCard(
                          imageUrl:
                              "https://images.pexels.com/photos/460736/pexels-photo-460736.jpeg?auto=compress&cs=tinysrgb&w=600",
                          date: "30 NOV",
                          labels: ["Arts & culture"],
                          title: "Mueseum of Art",
                          time: "10:00pm - 11pm"),

                      SizedBox(width: w * 0.05),

                      ////Event Card 3
                      EventCard(
                          imageUrl:
                              "https://images.pexels.com/photos/690597/pexels-photo-690597.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                          date: "30 NOV",
                          labels: ["Arts & culture"],
                          title: "Dance event",
                          time: "10:00pm - 11pm"),
                    ],
                  ),
                ),
              ),

              /////Upcoming Events text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.05, top: h * 0.01),
                    child: Text(
                      "Upcoming Events",
                      style: TextStyle(
                        fontSize: 20,
                        color: HexColor("0B012E"),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Almarai",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: w * 0.05, top: h * 0.03),
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 12,
                        color: HexColor("B8A1DC"),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: h * 0.02),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Image.network(
                      "https://images.pexels.com/photos/10432706/pexels-photo-10432706.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      height: h * 0.26,
                      fit: BoxFit.scaleDown),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
