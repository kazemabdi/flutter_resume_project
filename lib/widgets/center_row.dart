import 'package:flutter/material.dart';
import 'package:flutter_resume_project/components/tile_texts.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/tile_row.dart';

class CenterRow extends StatelessWidget {
  const CenterRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Expanded(
                  child: MyTileRow(
                      textDirection: TextDirection.ltr,
                      textSpan: TextSpan(
                          text: "CCNA (Certified at Part Software Group)"),
                      assetImage: "assets/images/cisco.png"),
                ),
                const Divider(),
                Expanded(
                  child: MyTileRow(
                      textDirection: TextDirection.ltr,
                      textSpan: TextSpan(
                        children: const [
                          TextSpan(text: "Server Hardware Training Workshop"),
                          TextSpan(text: "\n"),
                          TextSpan(text: "(Certified at Part Software Group)"),
                        ],
                        style: GoogleFonts.markaziText(),
                      ),
                      assetImage: "assets/images/server_maintenance.png"),
                ),
                const Divider(),
                Expanded(
                  child: MyTileTexts(
                    textSpan: TextSpan(
                      children: const [
                        TextSpan(text: "MikroTik RouterOS"),
                        TextSpan(text: " & "),
                        TextSpan(text: "Wireless systems "),
                        // TextSpan(text: "\n"),
                        TextSpan(text: "\n"),
                        TextSpan(text: "(Experienced MTCNA) "),
                      ],
                      style: GoogleFonts.markaziText(),
                    ),
                    textSpanTitle: TextSpan(children: [
                      TextSpan(
                          text: "Mikro",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic)),
                      TextSpan(
                        text: "Tik",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ]),
                  ),
                ),
                const Divider(),
                const Expanded(
                  child: MyTileRow(
                      textDirection: TextDirection.ltr,
                      textSpan: TextSpan(text: "LPIC-1/debian (Experienced)"),
                      assetImage: "assets/images/debian.png"),
                ),
              ],
            ),
          ),
        ),
        const VerticalDivider(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Expanded(
                  child: MyTileRow(
                      textDirection: TextDirection.ltr,
                      textSpan: TextSpan(
                          text:
                              "flutter (self-taught | This resume is written in dart)"),
                      assetImage: "assets/images/flutter.png"),
                ),
                const Divider(),
                Expanded(
                  child: MyTileTexts(
                    textSpan: const TextSpan(
                        text: "php (Educated at Imam Reza University)"),
                    textSpanTitle: TextSpan(
                      text: "php",
                      style: GoogleFonts.baloo2(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                const Divider(),
                const Expanded(
                  child: MyTileRow(
                      textDirection: TextDirection.ltr,
                      textSpan: TextSpan(
                          text:
                              "android/Java (Educated at Imam Reza University)"),
                      assetImage: "assets/images/studio.png"),
                ),
                const Divider(),
                const Expanded(
                  child: MyTileRow(
                      textDirection: TextDirection.ltr,
                      textSpan:
                          TextSpan(text: "nodejs/Socket.IO (self-taught)"),
                      assetImage: "assets/images/nodejs.png"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
