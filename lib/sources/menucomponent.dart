import 'package:flutter/material.dart';

class MenuComponent extends StatefulWidget {
  IconData icon;
  String menutext;
  MenuComponent({super.key, required this.icon, required this.menutext});

  @override
  State<MenuComponent> createState() => _MenuComponentState();
}

class _MenuComponentState extends State<MenuComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(widget.menutext);
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Icon(
              widget.icon,
              size: 45,
              color: Colors.red,
            ),
            Container(
                margin: EdgeInsets.only(top: 7),
                child: Text(
                  widget.menutext,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
