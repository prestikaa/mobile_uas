import 'package:flutter/material.dart';

import 'package:myapp/auth/auth_state.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageHomePage extends StatefulWidget {
  const PageHomePage({
    Key? key,
    this.param1 = '0',
  }) : super(key: key);

  final String param1;

  @override
  _State createState() => _State();
}

class _State extends State<PageHomePage> {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xFF262833),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 130,
                    right: 148,
                    bottom: 90,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Container(
                    margin: EdgeInsets.zero,
                    padding: const EdgeInsets.only(
                      left: 80,
                      right: 80,
                    ),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: const Color(0xFF262833),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(1),
                        topRight: Radius.circular(1),
                        bottomRight: Radius.circular(1),
                        bottomLeft: Radius.circular(1),
                      ),
                      child: Image.network(
                        '''https://source.unsplash.com/random''',
                        width: double.maxFinite,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Container(
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    width: double.maxFinite,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5D5D5D),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            top: 10,
                            bottom: 10,
                          ),
                          child: Icon(
                            MdiIcons.fromString('''map-marker-outline'''),
                            size: 24,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 120,
                            top: 10,
                            right: 120,
                            bottom: 10,
                          ),
                          child: Text('''text''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          child: Icon(
                            MdiIcons.fromString('''chevron-down'''),
                            size: 24,
                            color: Color(0xFFFCFBFB),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PageView(
                        scrollDirection: Axis.vertical,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
