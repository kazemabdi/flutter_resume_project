import 'package:flutter/material.dart';

class MyTileStack extends StatelessWidget {
  const MyTileStack({
    Key? key,
    required this.title,
    required this.tileWidget,
    required this.assetImage,
  }) : super(key: key);

  final String title;
  final String assetImage;
  final Widget tileWidget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image(
            image: AssetImage(assetImage),
          ),
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.white70),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                  flex: 2,
                  child: FittedBox(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: tileWidget))),
              const Spacer()
            ],
          ),
        ),
      ],
    );
  }
}
