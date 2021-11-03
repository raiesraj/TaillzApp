import 'package:flutter/material.dart';

class TopArea extends StatelessWidget {
  const TopArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 35),
            alignment: Alignment.center,
            width: 30,
            height: 30,
            child: Image.asset('asset/images/logo.png'),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: Color(0xff4b484d),
              size: 30,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_outlined,
              color: Color(0xff4b484d),
              size: 30,
            )),
      ],
    );
  }
}