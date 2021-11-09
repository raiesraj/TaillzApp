import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taillz/Commponenets/custom_image_button.dart';
import 'package:taillz/Screens/women_talk.dart';

class Consult extends StatefulWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  _ConsultState createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return status?WomenTalk(
      onBackPressed: (){
      setState(() {
        status= false;
      });
    },):Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
        ],
      ),
      );
  }
}

