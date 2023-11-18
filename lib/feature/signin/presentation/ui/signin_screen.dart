import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/assets.dart';
import '../../../../utils/button.dart';
import '../../../../utils/colors.dart';
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
                style: TextStyle(fontSize: sizes!.fontSize36, fontWeight: FontWeight.w800),
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
                      MaterialPageRoute(builder: (context) => const SignInScreen()),
                    );
                  },
                  text: "sign in with gmail",
                )),
            Positioned(
                bottom: 100.0,
                child: Container(
                  alignment: Alignment.center,
                  width: sizes!.width * 0.9,
                  child: CheckboxListTile(
                    title: Text(
                      "I accept the privacy policy\nand terms and conditions",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: sizes!.fontSize16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    value: false,
                    onChanged: (bool? value) {},
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                )),
            Positioned(
                bottom: 20.0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "privacy policy",
                      style: TextStyle(
                        fontSize: sizes!.fontSize15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "terms and conditions",
                      style: TextStyle(
                        fontSize: sizes!.fontSize15,
                        fontWeight: FontWeight.w500,
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
