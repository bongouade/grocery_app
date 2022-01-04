import 'package:flutter/material.dart';

import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:grocery_app/hex_colors.dart';


class AppBarWidget {
  final AdvancedDrawerController advancedDrawerController;
  final BuildContext context;

  AppBarWidget({
    required this.advancedDrawerController,
    required this.context,
  });

  AppBar build() {
    return AppBar(
      centerTitle: true,
      backgroundColor: HexColor.fromHex("4A43EC"),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      title: Text("HOME"),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        )
      ],
      leading: IconButton(
        onPressed: _handleMenuButtonPressed,
        icon: ValueListenableBuilder<AdvancedDrawerValue>(
          valueListenable: advancedDrawerController,
          builder: (_, value, __) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: Icon(
                value.visible ? Icons.clear : Icons.menu,
                key: ValueKey<bool>(value.visible),
              ),
            );
          },
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    advancedDrawerController.showDrawer();
  }
}
