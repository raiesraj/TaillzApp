import 'package:flutter/material.dart';

class CustomImageButton extends StatelessWidget {
  final dynamic onPressed;
  final ImageProvider imagePath;
  const CustomImageButton({
    Key? key, this.onPressed, required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:0,vertical:2),
        child: InkWell(
          onTap: onPressed,
          child: Ink(
            height: 170,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imagePath,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
