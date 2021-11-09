import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taillz/Screens/personal_page.dart';
class  CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0XFFFFAFAFA),
      elevation: 0,
      centerTitle: true,
      title:  Text(
        'taillz',
        style: TextStyle(
            fontSize: 30,
            color: Color(0XFFF121556),
            fontFamily: ('OpenSans'),
            fontWeight: FontWeight.w900),
      ),
      actions:<Widget>[
        IconButton(
          onPressed: () {},
          icon: Image.asset('asset/images/notifications.png',height: 25,color: Color(0XFFF121556),),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalPage()),);
          },
          icon: Icon(Icons.menu,color: Color(0XFFF121556),size: 25,),
        ),
      ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
