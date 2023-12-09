import 'package:flutter/material.dart';

import '../../core/app_color_palater.dart';
import '../../utils/font_utils.dart';

class BottomCurvedButton extends StatelessWidget {
  final void Function()? onTap;
  final String btnText;
  const BottomCurvedButton(
      {super.key, required this.onTap, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: AppColorPallete.bottomButtonColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Center(
            child: Text(
          btnText,
          style: FontUtils.font14(
            color: AppColorPallete.lightGrey,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
