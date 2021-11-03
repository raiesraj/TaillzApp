import 'package:flutter/material.dart';
import 'package:taillz/Screens/thoughts.dart';

import 'consult.dart';
class BuildScreens extends StatelessWidget {
  const BuildScreens({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          Thoughts(),
          Consult(),
          Consult(),
          Consult(),

        ],
      ),
    );
  }
}
