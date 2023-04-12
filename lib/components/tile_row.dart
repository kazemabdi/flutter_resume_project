import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTileRow extends StatelessWidget {
  const MyTileRow(
      {Key? key,
      required this.assetImage,
      required this.textSpan,
      this.textDirection = TextDirection.rtl})
      : super(key: key);
  final TextSpan textSpan;
  final TextDirection textDirection;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: FittedBox(
            child: RichText(
              textDirection: textDirection,
              text: TextSpan(
                style: GoogleFonts.markaziText(),
                children: [textSpan],
              ),
            ),
          ),
        ),
        // const Spacer(),
        Expanded(
          child: Image(
            image: AssetImage(assetImage),
          ),
        ),
      ],
    );
  }
}
