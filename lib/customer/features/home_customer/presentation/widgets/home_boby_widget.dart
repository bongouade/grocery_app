import 'package:flutter/material.dart';
import 'package:grocery_app/hex_colors.dart';

import 'category_list_widget.dart';
import 'reference_image_widget.dart';
import 'search_widget.dart';
import 'see_all_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  HomeBodyWidget({Key? key}) : super(key: key);

  final ScrollController? scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                alignment: Alignment.center,
                height: 100,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: HexColor.fromHex("4A43EC"),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(33),
                    bottomRight: Radius.circular(33),
                  ),
                ),
                child: const SearchWidget(),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: SizedBox(
                    height: 40,
                    child: ListView(
                      padding: const EdgeInsets.only(left: 20),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        CategoryListWidget(
                          text: "Sports",
                          color: HexColor.fromHex("F0635A"),
                          icon: Icons.sports_basketball,
                        ),
                        CategoryListWidget(
                          text: "text",
                          color: HexColor.fromHex("#F59762"),
                          icon: Icons.sports,
                        ),
                        CategoryListWidget(
                          text: "text",
                          color: HexColor.fromHex("#29D697"),
                          icon: Icons.sports,
                        ),
                        CategoryListWidget(
                          text: "text",
                          color: HexColor.fromHex("#46CDFB"),
                          icon: Icons.sports,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const SeeAllWidget(text: "Upcoming Events"),
          const SizedBox(height: 20),
          SizedBox(
            height: 250,
            child: ListView(
              padding: const EdgeInsets.only(left: 20),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: const [
                // ShotEventViewWidget(),
                // ShotEventViewWidget(),
                // ShotEventViewWidget(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const ReferenceImageWidget(),
          const SizedBox(height: 20),
          const SeeAllWidget(text: "Nearby You"),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
