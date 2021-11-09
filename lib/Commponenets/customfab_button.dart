import 'package:flutter/material.dart';
import 'package:taillz/Screens/fab_screen.dart';
class FabButton extends StatelessWidget {
  final dynamic  onPressed;
  const FabButton({
    Key? key, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(Icons.add,size: 35,),
      backgroundColor: Color(0XFFF121556),
    );
  }
}
