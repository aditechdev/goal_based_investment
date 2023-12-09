import 'package:flutter/material.dart';

class ForwardButtonComponent extends StatelessWidget {
  final void Function()? onPressed;
  const ForwardButtonComponent({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
          side: const BorderSide(color: Colors.white)),
      child: Container(
        // color: Colors.yellow,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color(0xff272727)),
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
