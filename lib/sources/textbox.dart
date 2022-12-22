import 'package:flutter/material.dart';

class TextBox extends StatefulWidget {
  final String hint, label;
  final IconData suffix;
  final bool obs;

  const TextBox(
      {super.key,
      required this.obs,
      required this.hint,
      required this.label,
      required this.suffix});

  @override
  State<TextBox> createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  final mail = TextEditingController();
  final pass = TextEditingController();

  final double rad = 10;
  @override
  Widget build(BuildContext context) {
    String? data1, data2;
    return TextFormField(
      controller: widget.obs ? pass : mail,
      obscureText: widget.obs,
      onEditingComplete: () => {
        data1 = mail.text,
        data2 = pass.text,
        print('mail:$data1\npass:$data2')
      },
      decoration: InputDecoration(
        hintText: widget.hint,
        labelText: widget.label,
        labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        suffixIcon: Icon(
          widget.suffix,
          color: Colors.red,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(rad),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: (BorderSide(width: 1.0, color: Colors.black)),
          borderRadius: BorderRadius.all(
            Radius.circular(rad),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: (BorderSide(width: 1.0, color: Colors.red)),
          borderRadius: BorderRadius.all(
            Radius.circular(rad),
          ),
        ),
      ),
    );
  }
}
