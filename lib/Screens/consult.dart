import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taillz/Screens/top_area.dart';

class Consult extends StatefulWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  _ConsultState createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          onTap: () {},
                          child: Ink(
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'asset/images/relationship.jpg',
                                ),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Ink(
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'asset/images/relationship.jpg',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 160,horizontal: 20),
                  child: Text(
                    'Relationships',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
