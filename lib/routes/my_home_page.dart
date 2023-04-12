import 'package:flutter/material.dart';
import 'package:flutter_resume_project/components/tile_row.dart';
import 'package:flutter_resume_project/components/tile_stack.dart';
import 'package:flutter_resume_project/widgets/center_row.dart';
import 'package:flutter_resume_project/widgets/end_row.dart';
import 'package:flutter_resume_project/widgets/start_row.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(
          child: StartRow(),
        ),
        Divider(),
        Expanded(
          child: CenterRow(),
        ),
        Divider(),
        Expanded(
          child: EndRow(),
        ),
      ],
    );
  }
}
