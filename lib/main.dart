import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taillz/Screens/buildscreen.dart';
import 'package:taillz/Screens/top_area.dart';

import 'Screens/consult.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 10,),
                TopArea(),
                SizedBox(
                  height: 15,
                ),
                buildTabBar(),
                BuildScreens(),
              ],
            ),
          ),
        ),
      ),
    );
  }
//Tab bar is here
  TabBar buildTabBar() {
    return TabBar(
                indicatorColor: Colors.transparent,
                labelColor: Colors.blue,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
                tabs: [
                  Tab(
                    child: Text(
                      'thoughts',
                      style: GoogleFonts.montserrat(),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'consult',
                      style: GoogleFonts.montserrat(),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'a change',
                      style: GoogleFonts.montserrat(),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Karma',
                      style: GoogleFonts.montserrat(),
                    ),
                  ),
                ],
              );
  }
}

