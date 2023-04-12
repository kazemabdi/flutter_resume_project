import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TileInfo extends StatelessWidget {
  const TileInfo(
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
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(assetImage),
            ),
          ),
        ),
      ],
    );
  }
}
