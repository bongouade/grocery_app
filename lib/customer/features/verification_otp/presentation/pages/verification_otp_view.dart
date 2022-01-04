import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grocery_app/hex_colors.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class VerificationOtpView extends StatefulWidget {
  const VerificationOtpView({Key? key}) : super(key: key);

  @override
  _VerificationOtpViewState createState() => _VerificationOtpViewState();
}

class _VerificationOtpViewState extends State<VerificationOtpView> {
  static const int codeLength = 4;

  String code = "";

  @override
  void initState() {
    super.initState();
    //verifyPhone();
  }

  @override
  Widget build(BuildContext context) {
    Widget title = const Text(
      "Verification",
      style: TextStyle(
        color: Colors.black,
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      ),
    );

    Widget subTitle = const Padding(
        padding: EdgeInsets.only(right: 56.0),
        child: Text(
          "Curabitur eleifend scelerisque feugiat. Nullam eros tellus,",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ));

    Widget verifyButton = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(10),
          primary: HexColor.fromHex("5669FF"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: HexColor.fromHex("5669FF")),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            const Text(
              "SIGN IN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: HexColor.fromHex("3D56F0"),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward_outlined,
              ),
            ),
          ],
        ),
      ),
    );

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      title,
                      const SizedBox(height: 20),
                      subTitle,
                      const SizedBox(height: 20),
                      Center(
                        child: PinCodeTextField(
                          onDone: (value) {
                            code = value;
                          },
                          highlightColor: Colors.white,
                          highlightAnimation: true,
                          highlightAnimationBeginColor: Colors.white,
                          highlightAnimationEndColor: HexColor.fromHex("5669FF"),
                          pinTextAnimatedSwitcherDuration:
                              const Duration(milliseconds: 500),
                          wrapAlignment: WrapAlignment.center,
                          hasTextBorderColor: Colors.grey,
                          highlightPinBoxColor: Colors.white,
                          autofocus: true,
                          pinBoxHeight: 65,
                          pinBoxWidth: 65,
                          pinBoxRadius: 10,
                          pinTextStyle: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          defaultBorderColor: Colors.grey,
                          pinBoxColor: const Color.fromRGBO(255, 255, 255, 0.8),
                          maxLength: codeLength,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 28.0),
                        child: verifyButton,
                      ),
                      const SizedBox(height: 20),
                      const Center(child: Text("resed code in 0:20")),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
