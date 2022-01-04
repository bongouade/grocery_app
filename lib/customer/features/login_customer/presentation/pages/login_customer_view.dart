import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/customer/features/home_customer/presentation/pages/home_customer_view.dart';
import 'package:grocery_app/customer/features/register_customer/presentation/pages/register_customer_page.dart';
import 'package:grocery_app/customer/features/verification_otp/presentation/pages/verification_otp_page.dart';
import 'package:grocery_app/hex_colors.dart';

class LoginCustomerView extends StatefulWidget {
  const LoginCustomerView({Key? key}) : super(key: key);

  @override
  State<LoginCustomerView> createState() => _LoginCustomerViewState();
}

class _LoginCustomerViewState extends State<LoginCustomerView> {
  bool eye = true;
  bool remember = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  label: Text("Email/Phone No. "),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                obscureText: eye,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        eye = !eye;
                      });
                    },
                    icon: eye
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                  ),
                  label: const Text("Password"),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/social_icons/google.png",
                            height: 15,
                          ),
                          const SizedBox(width: 10.0),
                          const Text("Google")
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/social_icons/facebook.png",
                            height: 15,
                          ),
                          const SizedBox(width: 10.0),
                          const Text("Facebook")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Padding(
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
                  onPressed: () {
                    Get.offAll(const HomeCustomerView());
                  },
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
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not Regsitered Yet ?"),
                  GestureDetector(
                    child: const Text(" Register Now."),
                    onTap: () {
                      Get.offAll(const RegisterCustomerPage());
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              GestureDetector(
                onTap: (){
                  Get.to( const VerificationOtpPage());
                },
                child: const Text(
                  "See OTP",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
