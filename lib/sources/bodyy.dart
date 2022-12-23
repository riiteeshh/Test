import 'dart:math';

import 'package:flutter/material.dart';

class Boddy extends StatefulWidget {
  const Boddy({Key? key}) : super(key: key);

  @override
  State<Boddy> createState() => _BoddyState();
}

class _BoddyState extends State<Boddy> {
  num avbl = 500;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      margin: EdgeInsets.only(top: 8, left: 2, right: 2),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 15),
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.wallet_rounded,
                  color: Colors.red,
                  size: 50,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 80),
                child: Text(
                  'Rs.$avbl',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32, left: 80),
                child: Text(
                  'Balance',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              Container(
                width: 20,
                margin: EdgeInsets.only(left: 175, top: 5, bottom: 18),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Divider(
                    height: 0.5,
                    thickness: 1.5,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 230),
                child: Icon(
                  Icons.emoji_events_rounded,
                  size: 50,
                  color: Colors.red,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 283),
                child: Text(
                  'Rs.$avbl',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 35, left: 283),
                child: Text(
                  'Reward Points',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
