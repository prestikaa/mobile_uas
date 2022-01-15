import 'package:flutter/material.dart';

import 'package:myapp/auth/auth_state.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageSinopsisTiket extends StatefulWidget {
  const PageSinopsisTiket({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageSinopsisTiket> {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Container(
          margin: EdgeInsets.zero,
          padding: const EdgeInsets.only(
            left: 20,
            top: 20,
            right: 20,
            bottom: 20,
          ),
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color(0xFF262833),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.only(
              left: 20,
              top: 20,
              right: 20,
              bottom: 20,
            ),
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xFF262833),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 25,
                  ),
                  child: Icon(
                    MdiIcons.fromString('''arrow-left-circle-outline'''),
                    size: 24,
                    color: Color(0xFFFFAF5F),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                                child: Image.network(
                                  '''https://cdn0-production-images-kly.akamaized.net/exNdUi26g_EH0mALM78wRftDxFc=/640x853/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2847958/original/089009500_1562641273-mulannn.jpg''',
                                  width: 125,
                                  height: 170,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 25,
                                      top: 15,
                                      right: 25,
                                      bottom: 15,
                                    ),
                                    child: Text('''DUNE''',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: const Color(0xFFFDFDFD),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                            fontStyle: FontStyle.normal,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        textAlign: TextAlign.left,
                                        maxLines: 1),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 25,
                                      right: 25,
                                      bottom: 25,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.zero,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.zero,
                                                child: Text('''Genre''',
                                                    style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: const Color(
                                                            0xFFFFAF5F),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 13,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        decoration:
                                                            TextDecoration.none,
                                                      ),
                                                    ),
                                                    textAlign: TextAlign.left,
                                                    maxLines: 1),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 50,
                                                ),
                                                child: Text('''Advanture''',
                                                    style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: const Color(
                                                            0xFFFFFFFF),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 13,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        decoration:
                                                            TextDecoration.none,
                                                      ),
                                                    ),
                                                    textAlign: TextAlign.left,
                                                    maxLines: 1),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 3,
                                              ),
                                              child: Text('''Durasi''',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: const Color(
                                                          0xFFFFAF5F),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                  maxLines: 1),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 49,
                                                top: 3,
                                              ),
                                              child: Text('''58 Menit''',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: const Color(
                                                          0xFFFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                  maxLines: 1),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 3,
                                              ),
                                              child: Text('''Sutradara''',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: const Color(
                                                          0xFFFFAF5F),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                  maxLines: 1),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 25,
                                              ),
                                              child: Text('''Niki Char''',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: const Color(
                                                          0xFFFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                  maxLines: 1),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 3,
                                              ),
                                              child: Text('''Rating usi''',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: const Color(
                                                          0xFFFFAF5F),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                  maxLines: 1),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 30,
                                                top: 3,
                                              ),
                                              child: Text('''15 +''',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: const Color(
                                                          0xFFFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                  maxLines: 1),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    top: 35,
                                    bottom: 25,
                                  ),
                                  child: Text('''SYNOPSIS''',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: const Color(0xFFFFAF5F),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 23,
                                          fontStyle: FontStyle.normal,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      textAlign: TextAlign.left,
                                      maxLines: 1),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 50,
                                    top: 35,
                                    bottom: 25,
                                  ),
                                  child: Text('''|''',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: const Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 23,
                                          fontStyle: FontStyle.normal,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      textAlign: TextAlign.left,
                                      maxLines: 1),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 48,
                                    top: 35,
                                    bottom: 25,
                                  ),
                                  child: Text('''SCHEDULE''',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: const Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 23,
                                          fontStyle: FontStyle.normal,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      textAlign: TextAlign.left,
                                      maxLines: 1),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 10,
                              bottom: 50,
                            ),
                            child: Text(
                              '''Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people.   As malevolent forces explode into conflict over the planet's exclusive supply of the most precious resource in existence, only those who can conquer their own fear will survive.''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
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
