import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'juice_page2.dart';

class JuicePage1 extends StatefulWidget {
  const JuicePage1({Key? key}) : super(key: key);

  @override
  State<JuicePage1> createState() => _JuicePage1State();
}

class _JuicePage1State extends State<JuicePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "images/oiiii.jpg",
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.6),
                colorBlendMode: BlendMode.darken,
              ),
            ),
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              children: [
                const SizedBox(
                  height: 80.0,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.sort,
                      color: Colors.white,
                      size: 35.0,
                    )),
                const SizedBox(
                  height: 60.0,
                ),
                const Center(
                  child: Text(
                    "JUICY",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Uchen"),
                  ),
                ),
                const SizedBox(
                  height: 60.0,
                ),
                const Center(
                  child: FaIcon(
                    FontAwesomeIcons.champagneGlasses,
                    color: Colors.white,
                    size: 100.0,
                  ),
                ),
                const SizedBox(
                  height: 60.0,
                ),
                const Center(
                  child: Text(
                    "Berry Juice",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Uchen"),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      "blend of berry with ice that make your tired day feels very fresh again",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.3,
                        wordSpacing: 5,
                          color: Colors.white.withOpacity(0.95),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: "SquarePeg"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70.0,
                ),
                const Center(
                  child: Text(
                    "Rs40 / glass",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Uchen"),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const JuicePage2 ()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 1.0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(child: Text("Explore more",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,fontFamily: "Uchen"),)),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
