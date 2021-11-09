import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taillz/Commponenets/comment_card.dart';
import 'package:taillz/Commponenets/customfab_button.dart';
import 'package:taillz/Commponenets/sample_text.dart';
import 'package:taillz/Screens/fab_screen.dart';

class Thoughts extends StatefulWidget {
  const Thoughts({Key? key}) : super(key: key);

  @override
  _ThoughtsState createState() => _ThoughtsState();
}

class _ThoughtsState extends State<Thoughts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FabButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>FabScreen()));},
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Image.asset(
                      'asset/images/banner.png',
                      height: 110,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      fit: BoxFit.fill,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    PopupMenuButton<int>(
                      icon: Icon(Icons.more_vert,color: Colors.white,size: 25,),
                        itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
                          new PopupMenuItem<int>(
                              value: 1, child: new Text('Follow User')),
                          new PopupMenuItem<int>(
                              value: 2, child: new Text('Block User')),
                          new PopupMenuItem<int>(
                              value: 3, child: new Text('Report User')),
                        ],
                        onSelected: (int value) {
                          setState(() { value = value; });
                        }
                    ),
                    // IconButton(
                    //   onPressed: () {
                    //     Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuPage()));
                    //   },
                    //   icon: Icon(
                    //     Icons.more_vert,
                    //     color: Colors.white,
                    //     size: 30,
                    //   ),
                    // ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60, left: 17),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xfff69a1ae),
                        backgroundImage:
                        AssetImage('asset/images/userprofile.png'),
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
                                fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '10/30/2021',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 14,
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
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'What should i do?',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4b484d),
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '119',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4b484d),
                          fontSize: 14,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'asset/images/Story.png',
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SampleText(),
                SampleText(),
                SampleText(),
                SampleText(),
                SampleText(),
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
              color: Color(0xfffD3D3D3),
              thickness: 0.6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'asset/images/heart.png',
                          height: 25,
                        ),
                      ),
                      Text(
                        "152",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'asset/images/Comment.png',
                          height: 25,
                        ),
                      ),
                      Text(
                        '23',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ],
                  ),
                  Text(
                    'Comment',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
            ),
            Divider(
              color: Color(0xfffD3D3D3),
              thickness: 0.6,
            ),
            CommentCard(),
            CommentCard(),
            CommentCard(),
          ],
        ),
      ),
    );
  }
}
