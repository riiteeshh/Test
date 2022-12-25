import 'package:assinment/sources/menucomponent.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, left: 2, right: 2),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1,
      color: Colors.transparent,
      child: Card(
        color: Color(0xEFFEEBEC),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 20, left: 30),
                  child: MenuComponent(
                    icon: Icons.send_time_extension_rounded,
                    menutext: 'Send Money',
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 20, left: 58),
                  child: MenuComponent(
                    icon: Icons.payment_rounded,
                    menutext: 'Pay Money',
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 20, left: 68),
                  child: MenuComponent(
                    icon: Icons.file_copy,
                    menutext: 'View Bills',
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 50, left: 30),
                  child: MenuComponent(
                    icon: Icons.poll_rounded,
                    menutext: 'Statitics',
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 50, left: 75),
                  child: MenuComponent(
                    icon: Icons.history_rounded,
                    menutext: 'Transactions',
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 50, left: 55),
                  child: MenuComponent(
                    icon: Icons.house_rounded,
                    menutext: 'Bank Transfer',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
