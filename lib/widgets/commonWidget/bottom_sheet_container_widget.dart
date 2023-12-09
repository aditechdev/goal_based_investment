import 'package:flutter/material.dart';

class BottomSheetContainer extends StatelessWidget {
  final Widget widget;
  final Color color;
  final double? height;
  const BottomSheetContainer(
      {super.key, required this.widget, required this.color, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height ?? MediaQuery.of(context).size.height * 0.9,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: widget,
    );
  }
}
