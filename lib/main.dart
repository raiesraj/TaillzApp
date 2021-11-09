import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Commponenets/CustomAppBar.dart';
import 'Commponenets/buildscreen.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'Screens/a_change.dart';
import 'Screens/consult.dart';
import 'Screens/karma.dart';
import 'Screens/thoughts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar(),
          backgroundColor: Color(0XFFFFAFAFA),
          body: SafeArea(
            child: Column(
              children: [
                TabBar(
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal:10),
                  indicatorColor: Colors.transparent,
                  labelColor: Color(0xFFF121556),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        'thoughts',
                        style: GoogleFonts.montserrat(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'consult',
                        style: GoogleFonts.montserrat(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'a change',
                        style: GoogleFonts.montserrat(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Karma',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
            Expanded(
              child: TabBarView(
                children: [
                  Thoughts(),
                  Consult(),
                  Achange(),
                  Karma(),
                ],
              ),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// //Tab bar is here
//   TabBar buildTabBar() {
//     return TabBar(
//       isScrollable: true,
//       labelPadding: EdgeInsets.symmetric(horizontal: 20),
//       indicatorColor: Colors.transparent,
//       labelColor: Color(0xFFF121556),
//       labelStyle: TextStyle(
//         fontWeight: FontWeight.bold,
//       ),
//       unselectedLabelColor: Colors.grey,
//       unselectedLabelStyle: TextStyle(
//         fontWeight: FontWeight.normal,
//       ),
//       tabs: [
//         Tab(
//           child: Text(
//             'thoughts',
//             style: GoogleFonts.montserrat(fontSize: 14),
//           ),
//         ),
//         Tab(
//           child: Text(
//             'consult',
//             style: GoogleFonts.montserrat(fontSize: 14),
//           ),
//         ),
//         Tab(
//           child: Text(
//             'a change',
//             style: GoogleFonts.montserrat(fontSize: 14),
//           ),
//         ),
//         Tab(
//           child: Text(
//             'Karma',
//             style: GoogleFonts.montserrat(
//               fontSize: 14,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }


