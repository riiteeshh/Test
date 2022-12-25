import 'package:flutter/material.dart';

class FloatinButton extends StatefulWidget {
  const FloatinButton({super.key});

  @override
  State<FloatinButton> createState() => _FloatinButtonState();
}

class _FloatinButtonState extends State<FloatinButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        foregroundColor: Colors.white,
        splashColor: Color(0xEFFEEBEC),
        child: Icon(
          Icons.qr_code_scanner_rounded,
          size: 35,
        ),
        backgroundColor: Colors.red,
        onPressed: () {});
  }
}
