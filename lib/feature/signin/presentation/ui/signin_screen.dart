import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vmd/privacy_policy.dart';

import '../../../../chat_screen.dart';
import '../../../../terms_and_conditions.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/button.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/custom_checkbox_list_tile.dart';
import '../../../../utils/res.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            FractionallySizedBox(
              heightFactor: 0.55,
              child: SvgPicture.asset(
                Assets.ellipse,
                semanticsLabel: 'Ellipse',
              ),
            ),
            Center(
              child: Text(
                "folkcomputing\nv2",
                style: TextStyle(
                  fontSize: sizes!.fontSize36,
                  fontWeight: FontWeight.w800,
                  fontFamily: Assets.montserratRegular,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
                top: sizes!.height / 1.8,
                child: ButtonSecondary(
                  height: 85.0,
                  width: sizes!.width * 0.8,
                  color: AppColors.buttonColor,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChatScreenWidget()),
                    );
                  },
                  text: "sign in with gmail",
                )),
            Positioned(
              bottom: 100.0,
              child: SizedBox(
                width: sizes!.width * 0.9,
                child: const CustomCheckboxListTile(
                  title: "I accept the privacy policy\nand terms and conditions",
                ),
              ),
            ),
            Positioned(
                bottom: 20.0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyPolicy()));
                      },
                      child: Text(
                        "privacy policy",
                        style: TextStyle(
                          fontSize: sizes!.fontSize15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TermsAndConditions()));
                      },
                      child: Text(
                        "terms and conditions",
                        style: TextStyle(
                          fontSize: sizes!.fontSize15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
