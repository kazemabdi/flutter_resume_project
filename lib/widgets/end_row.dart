import 'package:flutter/material.dart';
import 'package:flutter_resume_project/utilities/english_table.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/tile_stack.dart';

class EndRow extends StatelessWidget {
  const EndRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyTileStack(
              assetImage: "assets/images/target_2.png",
              title: "Interests",
              tileWidget: RichText(
                textDirection: TextDirection.rtl,
                text:
                    TextSpan(style: GoogleFonts.markaziText(), children: const [
                  TextSpan(text: "☑️️ "),
                  TextSpan(
                    text: "فناوری های open source",
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(text: "☑️️ "),
                  TextSpan(
                    text: "شبکه و زیرساخت",
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(text: "☑️️ "),
                  TextSpan(
                    text: "امنیت شبکه",
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(text: "☑️️ "),
                  TextSpan(
                    text: "برنامه نویسی و توسعه نرم افزار",
                  ),
                ]),
              ),
            ),
          ),
        ),
        const VerticalDivider(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyTileStack(
              assetImage: "assets/images/translate.png",
              title: "English",
              tileWidget: RichText(
                textDirection: TextDirection.ltr,
                text: const TextSpan(children: [
                  TextSpan(text: "☑️️ "),
                  TextSpan(text: "Reading: "),
                  TextSpan(text: "\t"),
                  TextSpan(text: "advanced (technical documentation)"),
                  TextSpan(text: "\n"),
                  TextSpan(text: "☑️️ "),
                  TextSpan(text: "Listening: "),
                  TextSpan(text: "\t"),
                  TextSpan(text: "advanced (technical documentation)"),
                  TextSpan(text: "\n"),
                  TextSpan(text: "☑️️ "),
                  TextSpan(text: "Writing: "),
                  TextSpan(text: "\t"),
                  TextSpan(text: "intermediate"),
                  TextSpan(text: "\n"),
                  TextSpan(text: "☑️️ "),
                  TextSpan(text: "Speaking: "),
                  TextSpan(text: "\t"),
                  TextSpan(text: "intermediate"),
                  TextSpan(text: "\n"),
                ]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
