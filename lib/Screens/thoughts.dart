import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Thoughts extends StatefulWidget {
  const Thoughts({Key? key}) : super(key: key);

  @override
  _ThoughtsState createState() => _ThoughtsState();
}

class _ThoughtsState extends State<Thoughts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'asset/images/banner.png',
                height: 110,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 10),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60, left: 10),
                        child: Text(
                          'Nick name',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          '10/30/2021',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'What should i do?',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4b484d),
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '119',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4b484d),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('asset/images/Story.png'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              buildSampleText(),
              buildSampleText(),
              buildSampleText(),
              buildSampleText(),
              buildSampleText(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'read more',
              style: GoogleFonts.montserrat(
                  color: Colors.blueAccent, fontSize: 14),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 0.6,
          ),
          Row(
            children: [
              Text('152'),
            ],
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 0.6,
          ),
        ],
      ),
    );
  }
//Sample text is here
  Padding buildSampleText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        'this is a sample story this is a sample',
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.normal,
          color: Color(0xff4b484d),
          fontSize: 18,
        ),
      ),
    );
  }
}
