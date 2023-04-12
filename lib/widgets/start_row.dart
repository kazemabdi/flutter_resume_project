import 'package:flutter/material.dart';
import 'package:flutter_resume_project/components/tile_stack.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/tile_info.dart';
import '../components/tile_row.dart';

class StartRow extends StatelessWidget {
  const StartRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MyTileStack(
            assetImage: "assets/images/online_resume.png",
            title: "Work Experience",
            tileWidget: RichText(
              textDirection: TextDirection.rtl,
              text: TextSpan(style: GoogleFonts.markaziText(), children: const [
                TextSpan(text: "☑ "),
                TextSpan(text: "پیمانکار پشتیبانی و نگهداری تجهیزات رایانه ای"),
                TextSpan(text: "\n"),
                TextSpan(text: "۱۴۰۱ - ۱۴۰۲"),
              ]),
            ),
          ),
        ),
        const VerticalDivider(),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TileInfo(
                textSpan: TextSpan(children: [
                  TextSpan(
                    text: "محمد کاظم عبدی پور",
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(
                    text: "متولد ۱۳۷۷",
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(
                    text: "فارغ التحصیل کارشناسی نرم افزار",
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(
                    text: "دانشگاه بین المللی امام رضا (ع)",
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(text: "\n"),
                  TextSpan(text: "📧 "),
                  TextSpan(text: "mkazemabdi@gmail.com"),
                ]),
                assetImage: "assets/images/student_2.png"),
          ),
        ),
      ],
    );
  }
}
