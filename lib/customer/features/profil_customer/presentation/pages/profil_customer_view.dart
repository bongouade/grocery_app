import 'package:flutter/material.dart';
import 'package:grocery_app/hex_colors.dart';

class ProfilCustomerView extends StatelessWidget {
  const ProfilCustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20.0,
          left: 20.0,
          top: 50.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 60,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "David Bongouade",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text(
                      "350",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text("Following"),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  height: 30,
                  width: 1,
                  color: Colors.grey,
                ),
                Column(
                  children: const [
                    Text(
                      "350",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text("Followers"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: HexColor.fromHex("5669FF")),
                    ),
                    primary: Colors.white,
                    onPrimary: HexColor.fromHex("5669FF")),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.edit,
                    ),
                    Text("Edit Profile"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              "About Me",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla posuere ante aliquet sagittis accumsan. Donec vel faucibus augue. Ut at vulputate felis, eget dignissim tellus. Donec condimentum sollicitudin accumsan. Aenean id ullamcorper urna. Pellentesque habitant morbi tristique senectus et netus et malesuada"),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Interest",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    primary: Colors.blue[50],
                    onPrimary: HexColor.fromHex("5669FF"),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.border_color_outlined,
                        size: 15,
                      ),
                      SizedBox(width: 7.0),
                      Text(
                        "CHANGE",
                        style: TextStyle(
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
              
              ],
            ),
          ],
        ),
      ),
    );
  }
}
