import 'package:flutter/material.dart';

import 'package:myapp/auth/auth_state.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageAfterPayTiket extends StatefulWidget {
  const PageAfterPayTiket({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageAfterPayTiket> {
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
                    bottom: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 100,
                  ),
                  child: Image.network(
                    '''https://source.unsplash.com/random''',
                    width: 154,
                    height: 186,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 70,
                    top: 40,
                    bottom: 30,
                  ),
                  child: Text('''HAPPY WACTHING''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: const Color(0xFFFFAF5F),
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1),
                ),
              ],
            ),
          ),
          // BottomBar
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: GestureDetector(
                  onTap: () async {
                    await Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageTiket(),
                      ),
                    );
                  },
                  child: Container(
                      width: double.maxFinite,
                      height: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xFF36C7D0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(1),
                          topRight: Radius.circular(1),
                          bottomRight: Radius.circular(1),
                          bottomLeft: Radius.circular(1),
                        ),
                      ),
                      child: Text(
                        '''Lihat Tiket''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: const Color(0xFF0B0B0B),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      )))),
        ],
      ),
    );
  }
}
