import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class FabScreen extends StatelessWidget {
  const FabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffafafa),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                      Text('Save as Draft'),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Publish',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Color(0XFFF121556),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90,left: 20),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Title of your Story',
                    filled: true,
                    fillColor: Color(0xFFF2F2F2),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1,color: Colors.grey,)
                  ),
                ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 20,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Your Thoughts, write here\..',
                    filled: true,
                    fillColor: Color(0xFFF2F2F2),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1,color: Colors.grey,)
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
