import 'package:assinment/sources/appbarwidget.dart';
import 'package:assinment/sources/bodyy.dart';
import 'package:assinment/sources/floatingactiionbutton.dart';

import 'package:assinment/sources/menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatinButton(),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color(0xEFFEEBEC), //Color(0xEFFEEBEC),
          elevation: 0,
          actions: <Widget>[
            AppBarWidget(),
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Boddy(),
            MenuPage(),
          ],
        ),
      )),
    );
  }
}
