import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vmd/utils/button.dart';

import '../../../../utils/assets.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/custom_checkbox_list_tile.dart';
import '../../../../utils/res.dart';
import '../../../signin/presentation/ui/signin_screen.dart';

class DisclaimerScreen extends StatefulWidget {
  const DisclaimerScreen({super.key});

  @override
  State<DisclaimerScreen> createState() => _DisclaimerScreenState();
}

class _DisclaimerScreenState extends State<DisclaimerScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: FractionallySizedBox(
                heightFactor: 0.55,
                child: SvgPicture.asset(
                  Assets.ellipse,
                  semanticsLabel: 'Ellipse',
                ),
              ),
            ),
            Center(
              child: Container(
                width: sizes!.width,
                margin: EdgeInsets.symmetric(horizontal: sizes!.pagePadding),
                padding: EdgeInsets.only(
                  top: sizes!.largePadding,
                  bottom: sizes!.tabletPagePadding,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  color: AppColors.boxColor,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Makes the column take up only as much space as its children need
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Important!".toUpperCase(),
                      style: TextStyle(
                        fontSize: sizes!.fontSize36,
                        fontWeight: FontWeight.w800,
                        fontFamily: Assets.montserratRegular,
                      ),
                    ),
                    SizedBox(
                      height: sizes!.extraLargePaddingSafeArea,
                    ),
                    Text(
                      "The folk computing app\nprovides health suggestions\nbut does not replace\nprofessional medical advice.\nConsult a healthcare\nprofessional for personalised\nguidance. Accuracy may vary,\nand the app is still in\ndevelopment. Use at your own\ndiscretion.",
                      style: TextStyle(
                        fontSize: sizes!.fontSize20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 100.0,
                child: SizedBox(
                  width: sizes!.width * 0.6,
                  child: const CustomCheckboxListTile(
                    title: "I Understand",
                  ),
                )),
            Positioned(
                bottom: 20.0,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: ButtonSecondary(
                    color: AppColors.buttonColor,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignInScreen()),
                      );
                    },
                    text: "Continue",
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
