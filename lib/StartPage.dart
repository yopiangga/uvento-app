import 'package:flutter/material.dart';
import 'dart:math' as math;

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F2632),
      // appBar: AppBar(
      //   title: Text("s"),
      // ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: -MediaQuery.of(context).size.width * 3 / 10 / 2,
            top: -MediaQuery.of(context).size.width * 1 / 10 / 2,
            child: Container(
              width: MediaQuery.of(context).size.width * 3 / 10,
              height: MediaQuery.of(context).size.width * 3 / 10,
              child: Image.asset(
                "assets/images/flat1.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 2 / 10,
            top: -15,
            child: Container(
              width: MediaQuery.of(context).size.width * 3 / 10,
              height: MediaQuery.of(context).size.width * 3 / 10,
              child: Image.asset("assets/images/flat2.png"),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 2 / 10 + 30,
            top: -15,
            child: Container(
              width: MediaQuery.of(context).size.width * 3 / 10,
              height: MediaQuery.of(context).size.width * 3 / 10,
              child: Image.asset("assets/images/flat3.png"),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 2 / 10 + 100,
            top: -15,
            child: Container(
              width: MediaQuery.of(context).size.width * 3 / 10,
              height: MediaQuery.of(context).size.width * 3 / 10,
              child: Image.asset("assets/images/flat4.png"),
            ),
          ),
          Positioned(
            right: -20,
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 3 / 10,
              height: MediaQuery.of(context).size.width * 3 / 10,
              child: Image.asset("assets/images/flat5.png"),
            ),
          ),
          Positioned(
            right: -MediaQuery.of(context).size.width * 3 / 10 - 20,
            top: MediaQuery.of(context).size.width * 3 / 10 - 8,
            child: Container(
              width: MediaQuery.of(context).size.width * 3 / 10,
              height: MediaQuery.of(context).size.width * 3 / 10,
              child: Transform(
                  transform: Matrix4.rotationY(math.pi),
                  child: Image.asset("assets/images/flat6.png")),
            ),
          ),
          Positioned(
            right: -MediaQuery.of(context).size.width * 1 / 10 - 10,
            top: MediaQuery.of(context).size.width * 3 / 10 * 2 + 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 3 / 10,
              height: MediaQuery.of(context).size.width * 3 / 10,
              child: Image.asset("assets/images/flat7.png"),
            ),
          ),
          Positioned(
            right: -MediaQuery.of(context).size.width * 5 / 10 + 10,
            top: MediaQuery.of(context).size.width * 3 / 10 * 3 + 10,
            child: Container(
              // width: MediaQuery.of(context).size.width * 3 / 10,
              height: MediaQuery.of(context).size.width * 3 / 10,
              child: Image.asset(
                "assets/images/flat8.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 3 / 10,
            bottom: MediaQuery.of(context).size.width * 2 / 10 + 20,
            child: Container(
              // width: MediaQuery.of(context).size.width * 3 / 10,
              height: MediaQuery.of(context).size.width * 3 / 10,
              child: Image.asset(
                "assets/images/flat9.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: -30,
            child: Container(
              // width: MediaQuery.of(context).size.width * 3 / 10,
              height: MediaQuery.of(context).size.width * 3 / 10,
              child: Image.asset(
                "assets/images/flat10.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.of(context).size.width * 3 / 10 - 30,
            child: Container(
              width: MediaQuery.of(context).size.width * 3 / 10,
              height: MediaQuery.of(context).size.width * 3 / 10,
              child: Image.asset("assets/images/flat5.png"),
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 3 / 10 - 20,
            bottom: -27,
            child: Container(
              width: MediaQuery.of(context).size.width * 3 / 10,
              height: MediaQuery.of(context).size.width * 3 / 10,
              child: Transform(
                  transform: Matrix4.rotationY(0),
                  child: Image.asset("assets/images/flat6.png")),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 6 / 10,
            child: Container(
              width: MediaQuery.of(context).size.width * 4 / 5,
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/logo-img.png"),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset("assets/images/logo-text.png"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "There’s a lot happening around you! Our mission is to provide what’s happening near you!",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  // Flexible(child: Text("")),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text("Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
