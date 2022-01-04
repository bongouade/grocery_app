import 'package:flutter/material.dart';
import 'package:grocery_app/hex_colors.dart';



class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.search,
              color: Colors.white,
            ),
            const SizedBox(width: 10.0),
            Container(
              height: 20,
              width: 1,
              color: Colors.grey,
            ),
            const SizedBox(width: 10.0),
            Text(
              "Search...",
              style: TextStyle(
                color: HexColor.fromHex("FFFFFF"),
                fontSize: 18,
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: HexColor.fromHex("5D56F3"),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.filter_list_sharp,
                    color: HexColor.fromHex("A29EF0"),
                  ),
                  const SizedBox(width: 5.0),
                  const Text(
                    "Filters",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
