import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  final double size;
  const LogoImage({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        child: FlutterLogo(
          size: size,
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 10, top: 15),
        child: Text(
          'Meguri Wallet',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.red,
              fontFamily: 'Pacifico',
              fontStyle: FontStyle.normal),
        ),
      ),
    ]);
  }
}
