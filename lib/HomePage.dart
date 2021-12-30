import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int DateActive = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color(0xff0F2632),
          appBar: AppBar(
            backgroundColor: Color(0xff0F2632),
            title: Image.asset("assets/images/LOGO.png"),
            actions: [
              Image.asset("assets/images/notification.png"),
              Image.asset("assets/images/menu.png"),
            ],
          ),
          bottomNavigationBar: TabBar(
            indicatorColor: Color(0xffFCCD00),
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            // color: Colors.amber,
                            // height: 200,
                            padding: EdgeInsets.only(right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello, Yopiangga!",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Let's explore what’s happening",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 54,
                          height: 54,
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              color: Color(0xffFCCD00),
                              borderRadius: BorderRadius.circular(54)),
                          child: Image.asset(
                            "assets/images/user1.png",
                            width: 50,
                            height: 50,
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          CardDate("1", "Tue", 0),
                          CardDate("2", "Tue", 1),
                          CardDate("3", "Tue", 2),
                          CardDate("4", "Tue", 3),
                          CardDate("5", "Tue", 4),
                          CardDate("6", "Tue", 5),
                          CardDate("7", "Tue", 6),
                          CardDate("8", "Tue", 7),
                          CardDate("9", "Tue", 8),
                          CardDate("10", "Tue", 9),
                          CardDate("11", "Tue", 10),
                          CardDate("12", "Tue", 11),
                          CardDate("13", "Tue", 12),
                          CardDate("14", "Tue", 13),
                          CardDate("15", "Tue", 14),
                          CardDate("16", "Tue", 15),
                          CardDate("17", "Tue", 16),
                          CardDate("18", "Tue", 17),
                          CardDate("19", "Tue", 18),
                          CardDate("20", "Tue", 19),
                          CardDate("21", "Tue", 20),
                          CardDate("22", "Tue", 21),
                          CardDate("23", "Tue", 22),
                          CardDate("24", "Tue", 23),
                          CardDate("25", "Tue", 24),
                          CardDate("26", "Tue", 25),
                          CardDate("27", "Tue", 26),
                          CardDate("28", "Tue", 27),
                          CardDate("29", "Tue", 28),
                          CardDate("30", "Tue", 29),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "All Events",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Row(
                        children: [
                          CardEvent("assets/images/mic.png", "Concert"),
                          CardEvent("assets/images/ping-pong.png", "Sports"),
                          CardEvent("assets/images/college-graduation.png",
                              "Education"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Popular Events",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      children: [
                        CardPopularEvent(
                            "Sports Meet in Galaxy Field",
                            "Jan 12, 2019",
                            "Greenfields, Sector 42",
                            "assets/images/image1.png"),
                        CardPopularEvent(
                            "Art & Meet in Street Plaza",
                            "Jan 12, 2019",
                            "Greenfields, Sector 42",
                            "assets/images/image2.png"),
                        CardPopularEvent(
                            "Youth Music in Galleria",
                            "Jan 12, 2019",
                            "Greenfields, Sector 42",
                            "assets/images/image3.png"),
                      ],
                    ),
                  )
                ],
              ),
              Text("Page 2"),
              Text("Page 3"),
            ],
          ),
        ));
  }

  Container CardPopularEvent(title, date, location, image) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xff283F4D)),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 14,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(date,
                          style: TextStyle(color: Colors.white, fontSize: 12))
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.white,
                        size: 14,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        location,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        maxLines: 1,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                )),
          )
        ],
      ),
    );
  }

  Container CardEvent(image, title) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 130,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xff283F4D)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  GestureDetector CardDate(date, day, index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          DateActive = index;
        });
      },
      child: Container(
        width: 47,
        height: 67,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: DateActive == index
                ? Color(0xffFCCD00)
                : Color(0xffFCCD00).withOpacity(0),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              date,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color:
                      DateActive == index ? Color(0xff0F2632) : Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              day,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color:
                      DateActive == index ? Color(0xff0F2632) : Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
