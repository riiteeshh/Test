import 'package:flutter/material.dart';

class ClickableText extends StatefulWidget {
  final String text; // routename;
  final Color color;
  const ClickableText({super.key, required this.text, required this.color});

  @override
  State<ClickableText> createState() => _ClickableTextState();
}

class _ClickableTextState extends State<ClickableText> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Navigator.pushNamed(context, widget.routename);
          print(widget.text);
        },
        child: Text(
          widget.text,
          style: TextStyle(color: widget.color, fontWeight: FontWeight.bold),
        ));
  }
}
