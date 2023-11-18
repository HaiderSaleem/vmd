import 'package:flutter/material.dart';
import 'package:vmd/utils/colors.dart';
import 'package:vmd/utils/res.dart';

class CustomCheckboxListTile extends StatefulWidget {
  final String title;

  const CustomCheckboxListTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<CustomCheckboxListTile> createState() => _CustomCheckboxListTileState();
}

class _CustomCheckboxListTileState extends State<CustomCheckboxListTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: sizes!.mediumPadding),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Transform.scale(
            scale: 1.5,
            child: Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
              activeColor: AppColors.checkBoxColor,
              fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                return AppColors.checkBoxColor;
              }),
            ),
          ),
          const SizedBox(width: 8), // Spacing between checkbox and title
          Expanded(
            child: Text(
              widget.title,
              style: const TextStyle(
                color: Colors.black, // Text color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
