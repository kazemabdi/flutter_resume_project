import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTileTexts extends StatelessWidget {
  const MyTileTexts(
      {Key? key, required this.textSpan, required this.textSpanTitle})
      : super(key: key);

  final TextSpan textSpan;
  final TextSpan textSpanTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: FittedBox(
            child: Center(
              child: RichText(
                // textAlign: TextAlign.center,
                text: textSpan,
              ),
            ),
          ),
        ),
        // const Spacer(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              child: RichText(
                textDirection: TextDirection.rtl,
                text: textSpanTitle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
