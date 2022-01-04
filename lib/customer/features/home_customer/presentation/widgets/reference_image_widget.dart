import 'package:flutter/material.dart';
import 'package:grocery_app/hex_colors.dart';



class ReferenceImageWidget extends StatelessWidget {
  const ReferenceImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 127,
      decoration: BoxDecoration(
          color: HexColor.fromHex("00F8FF"),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: const [],
      ),
    );
  }
}
