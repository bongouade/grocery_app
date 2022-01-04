import 'package:flutter/material.dart';

class DrawerContentWidget extends StatelessWidget {
  const DrawerContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            // Container(
            //   width: 128.0,
            //   height: 128.0,
            //   margin: const EdgeInsets.only(
            //     top: 24.0,
            //     bottom: 64.0,
            //   ),
            //   clipBehavior: Clip.antiAlias,
            //   decoration: const BoxDecoration(
            //     color: Colors.black26,
            //     shape: BoxShape.circle,
            //   ),
            //   child: Image.asset(
            //     "assets/social_icons/google.png",
            //     height: 35,
            //   ),
            // ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.home),
              title: const Text('My Order List'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.account_circle_rounded),
              title: const Text('Change Profile'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.favorite),
              title: const Text('Change Password'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings),
              title: const Text('Logout'),
            ),
            // const Spacer(),
            // DefaultTextStyle(
            //   style: const TextStyle(
            //     fontSize: 12,
            //     color: Colors.white54,
            //   ),
            //   child: Container(
            //     margin: const EdgeInsets.symmetric(
            //       vertical: 16.0,
            //     ),
            //     child: const Text('Terms of Service | Privacy Policy'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
