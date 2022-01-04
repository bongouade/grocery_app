import 'package:flutter/material.dart';

class SeeAllWidget extends StatelessWidget {
  final String text;
  const SeeAllWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(text),
          Row(
            children: const [
              Text("See All"),
              Icon(
                Icons.arrow_right_outlined,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
