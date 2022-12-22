import 'package:flutter/material.dart';

InputDecoration formdecoration(
    {required String hint, required String label, required IconData suffix}) {
  double rad = 8;
  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 12,
    ),
    errorStyle:
        TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 10),
    labelText: label,
    labelStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 12,
    ),
    suffixIcon: Icon(
      suffix,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(rad),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: (BorderSide(width: 1.0, color: Colors.grey)),
      borderRadius: BorderRadius.all(
        Radius.circular(rad),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: (BorderSide(width: 1.0, color: Colors.blue)),
      borderRadius: BorderRadius.all(
        Radius.circular(rad),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: (BorderSide(width: 1.0, color: Colors.red)),
      borderRadius: BorderRadius.all(
        Radius.circular(rad),
      ),
    ),
  );
}
